// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "ds-test/test.sol";
import {ArrayLib} from "../ArrayLib.sol";
contract ContractTest is DSTest {
    uint[] private sampleArray = [202,27,123,1,66,76,2,55,111,455];
    // function setUp() public {
    // }

    function testSum() public {
        uint sum = ArrayLib.sum(sampleArray);
        assertEq(sum,1118);
    }

    function testMin() public {
        uint min = ArrayLib.min(sampleArray);
        assertEq(min,1);
    }

    function testMax() public {
        uint max = ArrayLib.max(sampleArray);
        assertEq(max,455);
    }

    function testReverse() public view{
        uint[] memory reversedArray = ArrayLib.reverse(sampleArray);
        assert(reversedArray[0]==455);
        assert(reversedArray[1]==111);
        assert(reversedArray[2]==55);
        assert(reversedArray[3]==2);
        assert(reversedArray[4]==76);
        assert(reversedArray[5]==66);
        assert(reversedArray[6]==1);
        assert(reversedArray[7]==123);
        assert(reversedArray[8]==27);
        assert(reversedArray[9]==202);
    }

    function testSortArray() public view{
        uint[] memory sortedArray = ArrayLib.sort(sampleArray);
        assert(sortedArray[0]==1);
        assert(sortedArray[1]==2);
        assert(sortedArray[2]==27);
        assert(sortedArray[3]==55);
        assert(sortedArray[4]==66);
        assert(sortedArray[5]==76);
        assert(sortedArray[6]==111);
        assert(sortedArray[7]==123);
        assert(sortedArray[8]==202);
        assert(sortedArray[9]==455);
    } 
   
   function testSearchElement() public{
       bool elementFound = ArrayLib.search(sampleArray,455);
       assertTrue(elementFound);
   }
}
