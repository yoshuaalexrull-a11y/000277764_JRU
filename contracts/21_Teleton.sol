// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Teleton {
    address public owner;
    mapping(address => bool) public administradores;

    constructor() {
        owner = msg.sender;
    }

    function agregarAdmins(address _cuenta) public {
        administradores[_cuenta] = true;
    }

    modifier isOwner() {
        require(msg.sender == owner, "No eres el owner del contrato");
        _;
    }

    modifier isAdmin() {
        require(administradores[msg.sender] == true, "No eres parte de los administradores");
        _;
    }

    function depositar() public payable {
        
    }

    function consultarBalance() public view isAdmin returns(uint256) {
        return address(this).balance;
    }

    function retirar() public isOwner {
        payable(owner).transfer(address(this).balance);
    }

    function retirarAdmin(address _cuenta) public isAdmin {
        payable(_cuenta).transfer(address(this).balance);
    }
    
}