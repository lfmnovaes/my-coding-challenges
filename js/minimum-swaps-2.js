// https://www.hackerrank.com/challenges/minimum-swaps-2/problem
//
// You are given an unordered array consisting of consecutive integers  [1, 2, 3, ..., n] without any duplicates.
// You are allowed to swap any two elements. Find the minimum number of swaps required to sort the array in ascending order.

function minimumSwaps(arr) {
  let newArr = new Array(arr.length + 1).fill(0);
  arr.forEach((e, i) => {
    newArr[e] = i;
  });
  let swaps = 0;
  for (let i = 0; i < arr.length; i++) {
    if (arr[i] != i + 1) {
      swaps += 1;
      let temp = arr[i];
      arr[i] = i + 1;
      arr[newArr[i + 1]] = temp;
      newArr[temp] = newArr[i + 1];
    }
  }
  return swaps;
}

console.log(minimumSwaps([1, 3, 5, 2, 4, 6, 7]));
console.log(minimumSwaps([2, 3, 4, 1, 5]));
console.log(minimumSwaps([1, 2, 3, 4, 5, 6, 7, 8]));
