// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "./Market.sol";

contract PawnWars is PawnWarsMarket {
    uint256 private commission = 10 wei;
    // uint256 public fund = 0;

    // Created a Mapping game which maps from string to address array
    mapping(string => address[]) private game;

    // Created Mapping betAmount which maps from adddress to uint
    // It maps from address of player to bet amount
    mapping(address => uint256) private betAmount;

    // Created Mapping to store the unique id vs room id string
    mapping(uint256 => string) private roomIdMap;

    // Created Mapping to store the room id string vs unique id
    mapping(string => uint256) private iDRoomMap;

    // Set a Unique ID
    uint256 private uniqueid;

    // Set the mappings with room id string vs unique id and unique id vs room id string
    function setid(string memory roomID) public {
        if (iDRoomMap[roomID] == 0) {
            uniqueid = uniqueid + 1;
            roomIdMap[uniqueid] = roomID;
            iDRoomMap[roomID] = uniqueid;
        }
    }

    // Get Function which returns the unique id for given string id
    function getid(string memory roomID) public view returns (uint256) {
        return iDRoomMap[roomID];
    }

    // Function which accept a payment from the user and creates a user
    function createPlayer(uint256 ID) external payable {
        string storage RoomID = roomIdMap[ID];
        address sender = msg.sender;
        uint256 betamount = msg.value;
        game[RoomID].push(sender);
        betAmount[sender] = betamount;
    }

    // Function to send the bet amount to the winner
    function sendBetAmt(address payable player, uint256 bettedAmt) private {
        player.transfer(bettedAmt);
    }

    // Calculate the Total Bet Amount
    function totalBet(uint256 ID) public view returns (uint256) {
        string storage RoomID = roomIdMap[ID];
        uint256 Bet0 = betAmount[game[RoomID][0]];
        uint256 Bet1 = betAmount[game[RoomID][1]];
        uint256 total = Bet0 + Bet1;
        return total;
    }

    // Function to take the winner index as input
    // It calculates the Winner address and send total bet to the person
    function winner(uint256 ID, address player) external {
        string storage RoomID = roomIdMap[ID];
        uint256 plength = game[RoomID].length;
        address payable winner_address;
        for (uint256 i = 0; i < plength; i++) {
            if (game[RoomID][i] == player) {
                winner_address = payable(game[RoomID][i]);
            }
        }
        uint256 amount = (totalBet(ID) - commission);
        uint256 totlBet = amount;
        // fund += commission;
        sendBetAmt(winner_address, totlBet);
    }

    // Function for Get Bet Amount By Address
    function getBet(address player) public view returns (uint256) {
        return betAmount[player];
    }

    // Function to send money to both players if it is draw game
    function draw(uint256 ID) external {
        string storage RoomID = roomIdMap[ID];
        address payable player0_address = payable(game[RoomID][0]);
        uint256 bet0 = getBet(game[RoomID][0]) - commission;
        address payable player1_address = payable(game[RoomID][1]);
        uint256 bet1 = getBet(game[RoomID][1]) - commission;
        sendBetAmt(player0_address, bet0);
        sendBetAmt(player1_address, bet1);
    }
}
