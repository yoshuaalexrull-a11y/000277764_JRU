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
}