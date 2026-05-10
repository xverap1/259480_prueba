// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract compBytes {
    bytes private datos;

    function gurdarDatos(bytes memory valor) public {
        datos = valor;
    }

    function obteneraDatos() public view returns(bytes memory) {
        return datos;
    }

    function obtenerDatoscomoString() public view returns(string memory) {
        return string(datos);
    }

}