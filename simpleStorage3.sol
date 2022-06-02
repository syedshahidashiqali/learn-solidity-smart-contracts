// SPDX-License-Identifier: MIT

// Learning <<  Mapping  >>
pragma solidity ^0.8.8;

contract simpleStorage {

    uint256 public fvtNumber;

    mapping(string => uint256) public nameToFvtNumber;

    struct People {
        uint256 fvtNumber;
        string name;
    }


    People[] public people;

    function store(uint56 _fvtNumber) public {
        fvtNumber = _fvtNumber;
    }

    function retrieve() public view returns(uint256)  {
        return fvtNumber;
    }

    function addPerson(string memory _name, uint256 _fvtNumber) public {

        People memory newPerson = People({fvtNumber: _fvtNumber, name: _name});
        people.push(newPerson);

        // mapping
        nameToFvtNumber[_name] = _fvtNumber;
    }
}