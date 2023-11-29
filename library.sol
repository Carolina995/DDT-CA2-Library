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

function addBook(uint _id, string memory _title) public {
        require(msg.sender == librarian, "Only the librarian can add books.");
        books[_id] = Book(_title, address(0));
    }

 function borrowBook(uint _id) public {
        require(books[_id].currentHolder == address(0), "This book is currently borrowed by someone else.");
        books[_id].currentHolder = msg.sender;
    }
