// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

library ArrayLib {
    function sum(uint256[] memory _array) internal pure returns (uint256) {
        uint256 index;
        uint256 arrayLength = _array.length;
        uint256 sumOfElements;

        if (arrayLength == 1) return _array[0];
        for (index; index < arrayLength; ++index) {
            sumOfElements += _array[index];
        }
        return sumOfElements;
    }

    function min(uint256[] memory _array) internal pure returns (uint256) {
        uint256 minimumElement = _array[0];
        uint256 index;
        uint256 arrayLength = _array.length;

        for (index; index < arrayLength; ++index) {
            if (_array[index] < minimumElement) {
                minimumElement = _array[index];
            }
        }
        return minimumElement;
    }

    function max(uint256[] memory _array) internal pure returns (uint256) {
        uint256 maximumElement = _array[0];
        uint256 index;
        uint256 arrayLength = _array.length;

        for (index; index < arrayLength; ++index) {
            if (_array[index] > maximumElement) {
                maximumElement = _array[index];
            }
        }
        return maximumElement;
    }

    function _reverseArray(
        uint256[] memory _array,
        uint256 start,
        uint256 end
    ) internal pure returns (uint256[] memory) {
        while (start < end) {
            (_array[start], _array[end]) = (_array[end], _array[start]);
            start++;
            end--;
        }

        return _array;
    }

    function reverse(uint256[] memory _array)
        internal
        pure
        returns (uint256[] memory)
    {
        uint256 end = (_array.length) - 1;
        return _reverseArray(_array, 0, end);
    }

    // Following search function uses the linear search (To be optimized)
    function search(uint256[] memory _array, uint256 key)
        internal
        pure
        returns (bool)
    {
        uint256 arrayLength = _array.length;
        uint256 index;
        bool elementFound;

        for (index; index < arrayLength; ++index) {
            if (_array[index] == key) {
                elementFound = true;
                return elementFound;
            }
        }

        return elementFound;
    }

    // Following Sort uses the QuickSort Algorithm internally
    function sort(uint[] memory _array) internal pure returns(uint[] memory){
        if (_array.length > 0)
            quickSort(_array, 0, _array.length - 1);

        return _array;
    }

    function quickSort(uint[] memory _array, uint left, uint right) internal pure {
        if (left >= right)
            return;
        uint p = _array[(left + right) / 2];   // the pivot element
        uint i = left;
        uint j = right;
        while (i < j) {
            while (_array[i] < p) ++i;
            while (_array[j] > p) --j;
            if (_array[i] > _array[j])
                (_array[i], _array[j]) = (_array[j], _array[i]);
            else
                ++i;
        }

        if (j > left)
            quickSort(_array, left, j - 1);  
        quickSort(_array, j + 1, right);
    }

    // Note: This function has scope for gas optimization
    function leftRotate(uint[] memory _array,uint bits)
    internal pure
    returns (uint[] memory){
        uint arrayLength = _array.length;
        uint index;

        for(index; index < bits; ++index)
            leftRotatebyOne(_array, arrayLength);

        return _array;
    }

    function leftRotatebyOne(uint[] memory _array, uint length)
    internal
    pure
    {
        uint temp = _array[0];
        uint index;
       
        for(index; index < length - 1; ++index)
            _array[index] = _array[index + 1];
    
        _array[length-1] = temp;
    }
}
