// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Eventos {

    uint256 private cantidad = 10;

    event CambioValorCantidad(address invocador, uint256 nuevoValor);

    function cambiarcantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        emit CambioValorCantidad(msg.sender, _cantidad);
    }

    function obtenercantidad() public view returns (uint256){
        return cantidad;
    }
}