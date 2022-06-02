// SPDX-License-Identifier: MIT
pragma solidity 0.8.8; // current version is 0.8.12
// pragma solidity ^0.8.7; // meanse the version can be above 0.8.7, 0.8.8 or whatever above
// pragma solidity >=0.8.7 < 0.9.0; // above 0.8.7 and below 0.9.0

contract SimpleStorage {
    // boolean, uint, int, address, bytes
    // uint > unsigned integer > whole number wchich is positive
    // int > can be positive or negative
    // address > like in our metamask, i.e wallet address

    bool hasFavtNumber = true;
    uint fvtNumber = 5; //if we dont specify how many bits, it will infer 256 bits
    // uint8 fvtNumber = 5; // 8 bits will be used to store the number
    // uint256 fvtNumber = 5; // 256 bits will be used to store the number
    string fvtNumberInText = "five";
    int256 fvtNumberInt = -5;
    address myAddress = 0xfa0f014893909538fb21454e7dD380A0b6f64ae9;
    bytes32 fvtBytes = "cat"; // 0x098908908 // and max size of byte is 32
    // uint256 fvtNumberTest = 0; is same as: 
    // uint256 fvtNumberTest;
}