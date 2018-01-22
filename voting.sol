pragma solidity^0.4.11;

contract Voting {
    /* mapping field below is equivalent to an associative array or hash.
    The key of the mapping is candidate name stored as type bytes32 and value is
    an unsigned integer to store the vote count
    */
    mapping (bytes32 => uint8) public votesReceived;
    bytes32[] public candidatesList;

    function voting(bytes32[] candidateNames) public {
        candidatesList = candidateNames;
    }

    function totalVotesFor(bytes32 candidate) public returns (uint8) {
        require(validCandidate(candidate));
        return votesReceived[candidate]; 
    }

    function voteForCandidate(bytes32 candidate) public {
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
    }

    function validCandidate (bytes32 candidate) public returns (bool) {
        for (uint i = 0; i < candidatesList.length; i++) {
            if (candidatesList[i] == candidate) {
                return true;
            }
        }   
        return false;
    }
}