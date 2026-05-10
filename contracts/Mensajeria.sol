// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Mensajeria {

    // Struct del mensaje
    struct Mensaje {
        address from;
        address to;
        string contenido;
        uint timestamp;
    }

    // Array de mensajes
    Mensaje[] private mensajes;

    // Evento
    event MensajeEnviado(
        address from,
        address to,
        string contenido,
        uint timestamp
    );

    // Función para enviar mensaje
    function enviarMensaje(address _to, string memory _contenido) public {

        mensajes.push(
            Mensaje(
                msg.sender,
                _to,
                _contenido,
                block.timestamp
            )
        );

        emit MensajeEnviado(
            msg.sender,
            _to,
            _contenido,
            block.timestamp
        );
    }

    // Mostrar mensaje por índice
    function mostrarMensaje(uint i)
        public
        view
        returns(
            address,
            address,
            string memory,
            uint
        )
    {
        Mensaje memory m = mensajes[i];

        return (
            m.from,
            m.to,
            m.contenido,
            m.timestamp
        );
    }

    // Tamaño del array
    function totalMensajes() public view returns(uint) {
        return mensajes.length;
    }
}