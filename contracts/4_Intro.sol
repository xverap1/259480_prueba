// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts@4.9.3/utils/Counters.sol";

contract Intro {
    uint256 private cantidad;
    string public nombre = "upao";

    address public cuentainicial;
    address public cuentaupdate;

    constructor(uint256 _valorcantidad){
        cantidad = _valorcantidad;
        cuentainicial = msg.sender;
    }

    function cambiarcantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        cuentaupdate = msg.sender;
    }

    function obtenercantidad() public view returns (uint256){
        return cantidad;
    }
}