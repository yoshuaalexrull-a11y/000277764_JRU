// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;

contract Biblioteca277764 {
    
    struct Libro {
        uint256 id;
        string titulo;
        uint256 anio;
        string genero;
    }
    
    Libro[] public libros;
    uint256 public posicion;
    address public direccion;
    
    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    
    function agregarElemento(uint256 _id, string memory _titulo, uint256 _anio, string memory _genero) public {
        require(_id % 2 == 0, "No se permiten id impares");
        libros.push(Libro(_id, _titulo, _anio, _genero));
    }

    
    function contarElementos() public view returns (uint256) {
        return libros.length;
    }

    
    function cambiarDireccion(address _nuevaDireccion) public {
        direccion = _nuevaDireccion;
    }
}