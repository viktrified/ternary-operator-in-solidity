// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Idgaf {
    // ternary operator
    function serious(uint256 p) public pure returns (uint256) {
        return p >= 34 ? 77 : 99;
    }

    function remainder(uint256 number) public pure returns (uint256) {
        return number % 2;
    }

    // write a condition statement using the ternary operator that permits only girls to use my cup.
    function permitsOnlyGirls(bool person) public pure returns (string memory) {
        bool girl = true;

        return person == girl ? "you can use the cup fine geh" : "bro drop am!";
    }

    // a condition that will return nice! only if a user votes for buhari
    uint256 public buhari;
    mapping(address => bool) hasVoted;

    function voteBuhari() public {
        require(!hasVoted[msg.sender], "you never vote o!");

        buhari++;
        hasVoted[msg.sender] = true;
    }

    function acceptVote() public view returns (string memory) {
        return
            hasVoted[msg.sender]
                ? "leave am, this one don vote."
                : "this one no gree vote o!";
    }

    uint256 public peterObi;
    uint256 public tinubu;

    mapping(address => bool) hassVoted;
    mapping(address => bool) voteChoice;

    function peterObiVotes() public {
        require(!hassVoted[msg.sender], "you haven't voted");

        peterObi++;
        hassVoted[msg.sender] = true;
        voteChoice[msg.sender] = true;
    }

    function tinubuVotes() public {
        require(!hassVoted[msg.sender], "you haven't voted");

        tinubu++;
        hassVoted[msg.sender] = true;
        voteChoice[msg.sender] = false;
    }

    function whatsYourVote() public view returns (string memory) {
        return
            voteChoice[msg.sender]
                ? "your vote no go really count sha, but wehdone"
                : "hunger never wound you na why";
    }

    function lastKindThing(
        uint256 ourNumber
    ) public pure returns (string memory) {
        return
            ourNumber > 50
                ? "greater than 50"
                : ourNumber == 5
                    ? "its just 5 jare"
                    : ourNumber == 0
                        ? "can't even be patricia"
                        : ourNumber == 10
                            ? "joy in sorrows"
                            : "I'm done";
    }
}
