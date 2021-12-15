// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "./Market.sol";

contract PawnWars is PawnWarsMarket {
    // Storing the commission as 5000 Wei
    uint256 private commission = 10 wei;

    /// Game fund obtained form commision
    uint256 public fund = 0;

    // Created a Mapping Game which maps from string to address array

    mapping(string => address[]) private Game;

    // Created Mapping BetAmt which maps from adddress to uint
    // It maps from address of player to bet amount

    mapping(address => uint256) private BetAmt;

    // Created Mapping to store the unique id vs room id string

    mapping(uint256 => string) private RoomIDMap;

    // Created Mapping to store the room id string vs unique id

    mapping(string => uint256) private IDRoomMap;

    // Set a Unique ID

    uint256 private uniqueid;

    // event SetID(
    //     bool status
    // );

    // Set the mappings with room id string vs unique id and unique id vs room id string

    function setid(string memory roomID) public {
        // If the room ID already exists in the mapping then it will not create a new one
        if (IDRoomMap[roomID] == 0) {
            uniqueid = uniqueid + 1;
            RoomIDMap[uniqueid] = roomID;
            IDRoomMap[roomID] = uniqueid;
        }
        // emit SetID(true);
    }

    // Get Function which returns the unique id for given string id

    function getid(string memory roomID) public view returns (uint256) {
        return IDRoomMap[roomID];
    }

    // event SuccessDeposit(
    //     address sender,
    //     uint betAmount,
    //     string roomId
    // );

    // Function which accept a payment from the user and creates a user

    function createPlayer(uint256 ID) external payable {
        string storage RoomID = RoomIDMap[ID];
        address sender = msg.sender;
        uint256 betamount = msg.value;
        Game[RoomID].push(sender);
        BetAmt[sender] = betamount;
    }

    // Function to send the bet amount to the winner
    function sendBetAmt(address payable winner, uint256 bettedAmt) private {
        winner.transfer(bettedAmt);
    }

    // Calculate the Total Bet Amount

    function TotalBet(uint256 ID) public view returns (uint256) {
        string storage RoomID = RoomIDMap[ID];
        uint256 Bet0 = BetAmt[Game[RoomID][0]];
        uint256 Bet1 = BetAmt[Game[RoomID][1]];
        uint256 total = Bet0 + Bet1;
        return total;
    }

    // Function to take the winner index as input
    // It calculates the Winner address and send total bet to the person

    function Winner(uint256 ID, address player) external {
        string storage RoomID = RoomIDMap[ID];
        uint256 plength = Game[RoomID].length;
        address payable winner_address;
        for (uint256 i = 0; i < plength; i++) {
            if (Game[RoomID][i] == player) {
                winner_address = payable(Game[RoomID][i]);
            }
        }
        uint256 amount = (TotalBet(ID) - commission);
        uint256 totalBet = amount;
        fund += commission;
        sendBetAmt(winner_address, totalBet);
    }

    // Function for Get Bet Amount By Address

    function getBet(address player) public view returns (uint256) {
        return BetAmt[player];
    }

    // Function to send money to both players if it is draw game
    function Draw(uint256 ID) external {
        string storage RoomID = RoomIDMap[ID];
        address payable player0_address = payable(Game[RoomID][0]);
        uint256 bet0 = getBet(Game[RoomID][0]) - commission;
        address payable player1_address = payable(Game[RoomID][1]);
        uint256 bet1 = getBet(Game[RoomID][1]) - commission;
        sendBetAmt(player0_address, bet0);
        sendBetAmt(player1_address, bet1);
    }
}
