// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "ds-test/test.sol";
import {ArrayLib} from "../ArrayLib.sol";
contract ContractTest is DSTest {
    uint[] private sampleArray = [202,27,123,1,66,76,2,55,111,455];
    function setUp() public {
    }

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
}
