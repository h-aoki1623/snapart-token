var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "action voice rice future demand horse close end conduct avoid segment abandon";
var accessToken = "2f1d8ddd551348e38a7449c1d16955a4";

module.exports = {
 // See <http://truffleframework.com/docs/advanced/configuration>
 // to customize your Truffle configuration!
  networks: {
      development: {
        host: "localhost",
        port: 8500,
        network_id: 5777
      },
      ropsten: {
      provider: function() {
        return new HDWalletProvider(
          mnemonic,
          "https://ropsten.infura.io/v3/" + accessToken
        );
      },
      network_id: 3,
      gas: 500000
    },
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(
          mnemonic,
          "https://rinkeby.infura.io/v3/" + accessToken
        );
      },
      network_id: 4,
      gas: 4612388
    }
  }
};
