/*
 * An array A consisting of N integers is given. Rotation of the array means that 
 * each element is shifted right by one index, and the last element of the array
 * is moved to the first place. For example, the rotation of array A = [3,
 * 8, 9, 7, 6] is [6, 3, 8, 9, 7] (elements are shifted right by one index and 6
 * is moved to the first place).
 * 
 * The goal is to rotate array A K times; that is, each element of A will be
 * shifted to the right K times.
 *
 * For example, given:
 *  A = [3, 8, 9, 7, 6]
 *  K = 3
 * 
 * The function should return [9, 7, 6, 3, 8]. Three rotations were made:
 *  [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
 *  [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
 *  [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 *
 * For another example, given
 *  A = [0, 0, 0]
 *  K = 1
 * The function should return [0, 0, 0]
 * 
 * Given
 *  A = [1, 2, 3, 4]
 *  K = 4
 * The function should return [1, 2, 3, 4]
 * 
 * Assume that:
 *  . N and K are integers within the range [0..100];
 *  . each element of array A is an integer within the range [−1,000..1,000].
 * 
 * In your solution, focus on correctness. The performance of your solution
 * will not be the focus of the assessment.
 */

function solution(A, K) {
  // Prevent mutating the original array
  let solutionArray = structuredClone(A);

  for (let i = 0; i < K; i++) {
    solutionArray.unshift(solutionArray.pop());
  }
  
  return solutionArray;
}

console.log(solution([3, 8, 9, 7, 6], 3)); // [9, 7, 6, 3, 8]
console.log(solution([0, 0, 0], 1)); // [0, 0, 0]
console.log(solution([1, 2, 3, 4], 4)); // [1, 2, 3, 4]
