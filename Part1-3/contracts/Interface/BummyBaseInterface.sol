// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;
import "./BummyAccessInterface.sol";
interface BummyBaseInterface {
    //* BummyBase
    //* All of functions are internal

    /**
     * @dev _tokenId에 해당하는 Bummy를 _from에서 _to로 보냅니다.
     */
    function _transfer(address _from, address _to, uint256 _tokenId) override internal virtual;

    /**
     * @dev 버미를 생성하고 민팅합니다. 
     * 이때, tokenId(BummyId)가 정해집니다.
     * @param _momId The bummy ID of the mom of this bummy (zero for gen0)
     * @param _dadId The bummy ID of the dad of this bummy (zero for gen0)
     * @param _generation The generation number of this bummy, must be computed by caller.
     * @param _genes The bummy's genetic code.
     * @param _owner The inital owner of this bummy, must be non-zero (except for the unKitty, ID 0)
     */
    function _createBummy(
        uint256 _momId,
        uint256 _dadId,
        uint256 _generation,
        uint256 _genes,
        address _owner
    ) internal returns (uint);
}