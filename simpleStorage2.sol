// SPDX-License-Identifier: MIT

// Learning <<  Arrays & Structs  >>
pragma solidity ^0.8.8;

contract simpleStorage {

    uint256 public fvtNumber;
    // we can create a new type in solidity
    struct People {
        uint256 fvtNumber;
        string name;
    }

    // This is not a good way:
    // People public person = People({ fvtNumber: 6, name: "shahid" });
    // People public person2 = People({ fvtNumber: 5, name: "Ali" });
    // People public person3 = People({ fvtNumber: 2, name: "Anne" });
    // People public person4 = People({ fvtNumber: 4, name: "Adele" });

    // Instead we use array:

    // this type of array is dynamic array bcz the size of the array is not given
    // when it is initialized
    People[] public people;

    // This is fixed length array:
    // People[3] public people;
    function store(uint56 _fvtNumber) public {
        fvtNumber = _fvtNumber;
    }

    function retrieve() public view returns(uint256)  {
        return fvtNumber;
    }

    function addPerson(string memory _name, uint256 _fvtNumber) public {
        // we dont need memory keyword here in this line:
        // people.push(People(_fvtNumber, _name));
        // OR
        People memory newPerson = People({fvtNumber: _fvtNumber, name: _name});
        // OR
        // People memory newPerson = People({_fvtNumber, _name});
        people.push(newPerson);
    }
}