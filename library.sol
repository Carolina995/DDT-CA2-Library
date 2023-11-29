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
