pragma solidity ^0.4.17;

contract Adoption {
    // 강아지 16마리
    address[16] public adopters;
    
    // Adopting a pet (펫 분양 함수)
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15, "Check Your petId"); // 만족하지 않으면 여기서 프로그램종료
        adopters[petId] = msg.sender;
        return petId;
    }
    
    // Retrieving the adopters (강아지 전체 목록 조회)
    function getAdopters() public view returns (address[16]) {
        return adopters; // 강아지를 통쨰로 리턴 -> 가스비 무료
    }
}