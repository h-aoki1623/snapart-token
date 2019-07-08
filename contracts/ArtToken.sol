pragma solidity 0.4.24;
import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721MetadataMintable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Pausable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Burnable.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "../node_modules/openzeppelin-solidity/contracts/access/roles/MinterRole.sol";

contract ArtToken is ERC721Full, ERC721MetadataMintable, ERC721Pausable, ERC721Burnable {

    //string public tokenURIPrefix = "http://snapart.io/metadata/";
    string public tokenURIPrefix = "http://192.168.1.6:8888/metadata/";
    //string public tokenURIPrefix = "http://153.122.115.63/metadata/";

    constructor() ERC721Full("SnapArt:Token(Test)", "SAT") public {}

    function setTokenURIPrefix(string _tokenURIPrefix) external onlyMinter {
        tokenURIPrefix = _tokenURIPrefix;
    }

    function mintWithTokenURI(address _to, uint256 _tokenId, string _tokenURI) public returns (bool) {
        _mint(_to, _tokenId);
        _setTokenURI(_tokenId, _tokenURI);
        return true;
    }

}
