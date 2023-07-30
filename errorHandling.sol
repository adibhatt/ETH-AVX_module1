// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errorHandling {

    //This function checks if the number entered is positive else an error is thrown
    function testAssert(int x) public pure returns (string memory){
        assert(x >= 0 ) ;
        return "the number is positive";
    }
    //This function checks if the password entered by the user matches the password 
    uint password =5501;
    function testRequire(uint a ) public view returns(string memory) {
        require ((a == password), "password doesnot match");
        return "login sucessful ! welcome aditya";
    }
    //This function checks if the number enter is prime or not and if prime then print it's square.
    function testRevert(uint num) public pure returns(uint){
        assert(num != 0);
    for( uint i=2; i < num ; i++)
    {
        if(num %i == 0)
        revert("Not a prime number");
    }
     return (num*num);
    }
   
}
