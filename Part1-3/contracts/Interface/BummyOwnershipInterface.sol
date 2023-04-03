// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

interface BummyOwnershipInterface {
     //* BummyOwnership
    /**
     * @dev 실수로 버미를 Core contract로 보냈을때 복구 시키는 함수입니다.
     * @param _bummyId 실수로 보내진 버미의 토큰 아이디
     * @param _recipient 받을 사람
     */
    function rescueLostBummy(uint256 _bummyId, address _recipient) external;

     /**@dev _tokenId에 해당하는 token의 owner가 _claimant 과 동일하면 true 아니면 false를 반환
     *@param _claimant the address we are validating against.
     *@param _tokenId bummy id, only valid when > 0
     */
    function _owns(address _claimant, uint256 _tokenId) internal view returns (bool);
}