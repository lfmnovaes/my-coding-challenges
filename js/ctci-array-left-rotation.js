// https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem
/*
 * Complete the 'rotLeft' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER d
 */

function rotLeft(a, d) {
  for (let i = 0; i < d; i++) {
    a.push(a.shift());
  }
  return a;
}

console.log(rotLeft([1, 2, 3, 4, 5], 4)); // [5, 1, 2, 3, 4]
