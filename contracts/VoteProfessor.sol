pragma solidity ^0.4.11;

contract VoteProfessor  {
    // The two choices for your vote
    string public choice1;
    string public choice2;
    string public choice3;
    string public choice4;
    string public choice5;
    
    // Information about the current status of the vote
    uint public votesForChoice1;
    uint public votesForChoice2;
    uint public votesForChoice3;
    uint public votesForChoice4;
    uint public votesForChoice5;
    uint public numberOfVotesCast = 0;

    
    // Events used to log what's going on in the contract
    event logString(string);
    event newVoteCommit(string, bytes32);
    event voteScore(string, uint, uint, uint, uint, uint);
    
    // Constructor used to set parameters for the this specific vote
    function CommitRevealElection(
                                  string _choice1, 
                                  string _choice2,
                                  string _choice3,
                                  string _choice4,
                                  string _choice5) {
       
        choice1 = _choice1;
        choice2 = _choice2;
        choice3 = _choice3;
        choice4 = _choice4;
        choice5 = _choice5;
        
        votesForChoice1 = 0;
        votesForChoice2 = 0;
        votesForChoice3 = 0;
        votesForChoice4 = 0;
        votesForChoice5 = 0;

    }
    
    
    function vote(uint voteNumber) {
       
        if (voteNumber == 1) {
            votesForChoice1 = votesForChoice1 + 1;
            logString('Vote for choice 1 counted.');
        } else if (voteNumber == 2) {
            votesForChoice2 = votesForChoice2 + 1;
            logString('Vote for choice 2 counted.');
        } else if (voteNumber == 3) {
            votesForChoice3 = votesForChoice3 + 1;
            logString('Vote for choice 3 counted.');
        } else if (voteNumber == 4) {
            votesForChoice4 = votesForChoice4 + 1;
            logString('Vote for choice 4 counted.');
        } else if (voteNumber == 5) {
            votesForChoice5 = votesForChoice5 + 1;
            logString('Vote for choice 5 counted.');
        } 
        else {
            logString('Vote could not be read! Votes must start with the ASCII character `1` or `2`');
        }
     
        
    }
    
    
     
    function getScore () constant returns(string) {
        
        voteScore ("The vote ended in a tie!", votesForChoice1, votesForChoice2, votesForChoice3 ,votesForChoice4, votesForChoice5);
        return "Score";
    }
}