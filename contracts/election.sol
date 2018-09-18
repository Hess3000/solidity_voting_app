pragma solidity 0.4.24;

contract Election {

    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Read/write candidates
    mapping(uint => Candidate) public candidates;

    // Store candidates count
    uint public candidatesCount;

    // Store accounts that have voted
    mapping(address => bool) public voters;

    function addCandidate(string _name) private {
    	candidatesCount ++;
    	candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

}