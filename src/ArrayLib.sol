// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

library ArrayLib{
  function sum(uint[] memory _array) internal pure returns (uint){
    uint index;
    uint arrayLength = _array.length;
    uint sumOfElements;

    if(arrayLength==1) return _array[0];
    for(index;index<arrayLength;++index){
      sumOfElements+=_array[index];
    }
    return sumOfElements;
  }

  function min(uint[] memory _array)  internal pure returns(uint){
      uint minimumElement = _array[0];
      uint index;
      uint arrayLength = _array.length;

      for(index; index < arrayLength; ++index){
            if(_array[index] < minimumElement){
                minimumElement = _array[index];
            }
        }
        return minimumElement;
  }

  function max(uint[] memory _array)  internal pure returns(uint){
      uint maximumElement = _array[0];
      uint index;
      uint arrayLength = _array.length;

      for(index; index < arrayLength; ++index){
            if(_array[index] > maximumElement){
                maximumElement = _array[index];
            }
        }
        return maximumElement;
  }

  function _reverseArray(uint[] memory _array,uint start,uint end) internal pure returns(uint[] memory){

      while(start<end){
        (_array[start],_array[end])=(_array[end],_array[start]);
        start++;
        end--;
      }

      return _array;

  }

  function reverse(uint[] memory _array) internal pure returns(uint[] memory){
    uint end = (_array.length)-1;
    return _reverseArray(_array,0,end);
  }

  // Following sort function uses the bubble sort (To be optimized)
  function sort(uint[] memory _array) internal pure returns (uint[] memory){
      uint arrayLength = _array.length;
      for(uint i;i<arrayLength-1;++i){
        for(uint j;j<arrayLength-1-i;++j){
          if(_array[j+1]<_array[j]){
            (_array[j],_array[j+1]) = (_array[j+1],_array[j]);
        }
        }
      }
      return _array;
  }
}