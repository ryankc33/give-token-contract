const SafeMath = artifacts.require('./SafeMath.sol');
const Ownable = artifacts.require('./Ownable.sol');

const GiveToken = artifacts.require('./GiveToken.sol');

module.exports = (deployer) => {
    deployer.deploy(SafeMath);
    deployer.deploy(Ownable);

    deployer.link(Ownable, GiveToken);
    deployer.link(SafeMath, GiveToken);

    deployer.deploy(GiveToken);
};