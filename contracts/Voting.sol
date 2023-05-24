// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Voting{
    string public title="President";
    struct Option{
        string name;
        string description;
        address[] votes;
        uint voteCount;
    }
    mapping(uint=>Option) public options;

    address[] emptyVotes;
    constructor(){
        options[1]=Option({
                name:"Boluwatife",
                description:"Best choice",
                votes:emptyVotes,
                voteCount:0
        });
        options[2]=Option({
            name:"Busta",
            description:"Nice choice",
            votes:emptyVotes,
            voteCount:0
        });
    }

    function castVote(address voter,uint optionID) public {
        options[optionID].votes.push(voter);
        options[optionID].voteCount++;
    }

}