// https://www.hackerrank.com/challenges/simple-array-sum/problem

/*
 * Complete the 'simpleArraySum' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY ar as parameter.
 */

function simpleArraySum(arr) {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
}

console.log(simpleArraySum([1, 2, 3, 4, 5])); // 15
console.log(simpleArraySum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])); // 55
console.log(simpleArraySum([1, 2, 3, 4, 10, 11])); // 31
