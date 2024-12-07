// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <= 0.9.0;

// arrays are data structures that store a fixed amount of data in an order
// methods in array
// pop, push, length, delete

contract myArray{
    uint [] public firstArray;
    uint [] public secondArray;
    uint [200] public fixedArray;

    // push is to add one or more elements to the array
    function pushAction(uint number) public {
         firstArray.push();
    }
    function popAction() public {
         secondArray.pop();
    }
    function lengthAction() public view returns(uint){
        return firstArray.length;
    }
    function removeArray(uint i)public{
        delete firstArray[i];
    } // when you delete in an array, the length remains the same

}

contract CompactingArraysAssignment{
    // create a function that can fully remove the last element from an array
    uint [] public randoms = [1,2,3,4];

    // remove last element
    function removeElement(uint i) public{
        randoms[i] = randoms[randoms.length - 1];
        randoms.pop();
    }
    // create a function to add 5,6,7 to an aray
    function addElement() public {
        for (uint i = 5; i < 8; i++)
        randoms.push(i);

        /* or manually: randoms.push(1)
                        randoms.push(2)
                        randoms.push(3)
                        randoms.push(4)
        */

    }

    // remove any element
    function removeAParticularElement(uint) public{
        randoms.pop();
    }

    // check the elemets (basically the output)
    function getAddElement() public view returns (uint[] memory){
        return  randoms;
    }
}
