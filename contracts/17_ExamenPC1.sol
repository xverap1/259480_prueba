// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Universidad259480{

 //Struct
    struct Alumno {
        uint256 id;
        string nombre;
        uint256 edad;
    }

    //Arreglo publico
    Alumno[] public alumnos;

        constructor() {
        console.log("Ejecutado por: 259480 - Xiomara Natali Vera Perez");
    }
}