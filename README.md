# ETH-AVX_module1
This is a smart contract created in solidity programming language that demonstrates error handling with the help of `assert` , `revert` and `require` functions.

## Description
This solidity contract explains the basic error handling concepts in solidity programming using 3 seperate functions inside the smart contract.
This is done by using functions like `assert`, `revert` and `require` functions.
This contract takes you through these functions , their usage, functionality and syntax.

## Getting Started

### Executing program
To run this program, you can use `Remix`, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile errorHandling.sol" button.

Once the code is compiled, you can `deploy` the contract by clicking on the `"Deploy & Run Transactions"` tab in the left-hand sidebar. Select the `"errorHandling"` contract from the dropdown menu, and then click on the `"Deploy"` button.

### `testAssert(int x)`
- This function demonstrates the use of `assert` function.
- using `assert` function we check if the value provided is positive or not.
- If the value is 0 or negative , the execution is stopped.

### `testRequire(uint a)`
- This function demonstrates the usage of `require` function.
- It takes a positive integer value `a` , and displays a message that the login was susessfull if the value given by user matches the password set by the coder.
- The require function is used to check if `a` is equals to `password` set while coding.
- If the condition fails, it `reverts` the transaction with a custom error message stating that the password doesnot match.
- If the condition is met, it returns the message login sucessful ! welcome aditya .

### `testRevert(uint num)`
-This function demonstrates the usage of the `revert` function.
- It takes `num` and checks if the number is prime or not and if prime then print the square of the number.
- First using `assert` function we check that `num` should not be zero.
- Using `revert` function, if the number is not prime, it reverts the transaction with a custom error message stating not prime number
- If the condition is met, it returns the square of the `num` .


## Authors

Aditya Bhatt
adityabhatt05101007@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
