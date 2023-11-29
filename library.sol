// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Library {
    struct Book {
        string title;
        address currentHolder;
    }

 address public librarian;
    mapping(uint => Book) public books;

   contructor() {
        librarian = msg.sender;
    }
    
