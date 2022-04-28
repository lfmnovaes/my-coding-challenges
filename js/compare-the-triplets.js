// https://www.hackerrank.com/challenges/compare-the-triplets/problem

/*
 * Complete the 'compareTriplets' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

function compareTriplets(a, b) {
  let aPoints = 0;
  let bPoints = 0;
  for (let i = 0; i < a.length; i++) {
    if (a[i] > b[i]) {
      aPoints++;
    } else if (a[i] < b[i]) {
      bPoints++;
    }
  }
  return [aPoints, bPoints];
}

console.log(compareTriplets([5, 6, 7], [3, 6, 10])); // [1, 1]
console.log(compareTriplets([17, 28, 30], [99, 16, 8])); // [2, 1]
