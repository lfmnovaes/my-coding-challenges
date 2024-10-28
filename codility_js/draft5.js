/*
 * Write a function:
 * 
 * function solution(A);
 * 
 * that, given an array A of N integers, returns the smallest positive integer
 * (greater than 0) that does not occur in A.
 * 
 * For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
 * Given A = [1, 2, 3], the function should return 4.
 * Given A = [-1, -3], the function should return 1.
 * 
 * Write an efficient algorithm for the following assumptions:
 * 
 * - N is an integer within the range [1..100,000];
 * - each element of array A is an integer within the range [-1,000,000..1,000,000].
 */

// function solution(A) {
//   const positiveNumbers = A.filter((num) => num > 0).sort((a, b) => a - b);
//   let smallestPositiveNumber = 1;

//   for (let num of positiveNumbers) {
//     if (num === smallestPositiveNumber) {
//       smallestPositiveNumber++;
//     }
//   }

//   return smallestPositiveNumber;
// }

// Not relying on the array to be sorted
// function solution(A) {
//   const N = A.length;
//   const present = new Array(N + 1).fill(false);

//   for (let num of A) {
//     if (num > 0 && num <= N) {
//       present[num] = true;
//     }
//   }

//   for (let i = 1; i <= N; i++) {
//     if (!present[i]) {
//       return i;
//     }
//   }

//   return N + 1;
// }

// Less space complexity but modifies A array
function solution(A) {
  const N = A.length;
  
  for (let i = 0; i < N; i++) {
    while (A[i] > 0 && A[i] <= N && A[A[i] - 1] !== A[i]) {
      let temp = A[A[i] - 1];
      A[A[i] - 1] = A[i];
      A[i] = temp;
    }
  }

  for (let i = 0; i < N; i++) {
    if (A[i] !== i + 1) {
      return i + 1;
    }
  }

  return N + 1;
}

console.log(solution([1, 3, 6, 4, 1, 2])); // 5
console.log(solution([1, 2, 3])); // 4
console.log(solution([-1, -3])); // 1
