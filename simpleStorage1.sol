// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;


contract simpleStorage {
    // public: 
    // visible internally and externally 
    // (creates a getter func for storage/state)
    // anybody who interacts with the contract can see this value
    // public variable implicitly gets assigned a function that returns its value
    // private:
    // are only visible in the current contract
    // external:
    // are only visible externally only for(func)
    // meaning someone outside this contract can call this func
    // internal:
    // only visible internally
    // only this contract and it child contract can access this
    // << by default visibility is internal >>
    // every single time we change state of a blockchain we do it in transaction
    // The more stuff in your func, the more gas it costs
    uint256 public fvtNumber;

    function store(uint256 _fvtNumber) public {
        fvtNumber = _fvtNumber;
    }

    // view, pure
    // view and pure funcs, when called alone, don't spend gas
    // view > means we just wanna read state from this contract
    // in this case our retrieve func is just reading what is the value of fvtNumber
    // view and pure funs disallow modification of state
    // you can't update the blockchain at all with a view func
    // Pure func additionally disallow you to read from blockahon state
    function retrieve() public view returns(uint256) {
        return fvtNumber;
    }

    // if a gas calling func calls a view or pure func - only then it will cost gas
    
}