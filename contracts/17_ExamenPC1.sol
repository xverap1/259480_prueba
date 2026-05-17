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

    //Direccion del contrato
    address public dirContrato;

    constructor() {
        dirContrato = address(this);
        console.log("Ejecutado por: 259480 - Xiomara Natali Vera Perez");
    }

    //Agregar elemento
    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad) public {
        alumnos.push(Alumno(_id, _nombre, _edad));
    }

    //Contar elementos
    function contarElementos() public view returns(uint256) {
        return alumnos.length;
    }

}