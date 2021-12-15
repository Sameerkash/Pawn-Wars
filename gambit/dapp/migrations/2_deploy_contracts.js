var PawnWars = artifacts.require("PawnWars");
var NFT = artifacts.require("NFT");
module.exports = function (deployer) {
   deployer.deploy(PawnWars).then(() => {
     console.log(PawnWars.address);
     return deployer.deploy(NFT, PawnWars.address);
   });
};
