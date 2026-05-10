// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompString {
    string private saludo = "Hola";

    function cambiarSaludo(string memory texto) public {
        saludo = texto;
    }

    function saludar() public view returns(string memory) {
        return saludo;
    }

    function agregarSaludo(string memory texto) public view returns(string memory){
        return string.concat(saludo, texto);
        
        //return string(abi.encodePacked(saludo, texto));
    }

    // Repite el saludo varias veces usando FOR
    /*function saludarTodos(uint cantidad) public view returns(string memory) {
        string memory resultado = "";
        for(uint i = 0; i < cantidad; i++) {
            resultado = string.concat(resultado, saludo);
        }

        return resultado;
    }*/

    //Pedro, Betty, Jose
    function saludarTodos(string[] memory nombres) public view returns(string memory){
        string memory resultado = "";
        for (uint i = 0; i < nombres.length; i++) {
            resultado = string.concat(resultado, saludo, nombres[i]);
            if (i < nombres.length - 1) {
                resultado = string.concat(resultado, ", ");
            } else {
                resultado = string.concat(resultado, ".");
            }
        }
        return resultado; //Hola Pedro, Hola Betty, Hola Jose.
    }

}