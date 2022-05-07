// https://www.hackerrank.com/challenges/between-two-sets/problem
/*
 * Complete the 'getTotalX' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

function getTotalX(a, b) {
  let total = 0;
  let max = Math.max(...b);
  let min = Math.min(...a);
  for (let i = min; i <= max; i++) {
    let isValid = true;
    for (let j = 0; j < a.length; j++) {
      if (i % a[j] !== 0) {
        isValid = false;
        break;
      }
    }
    if (isValid) {
      let isValid2 = true;
      for (let j = 0; j < b.length; j++) {
        if (b[j] % i !== 0) {
          isValid2 = false;
          break;
        }
      }
      if (isValid2) {
        total++;
      }
    }
  }
  return total;
}

console.log(getTotalX([2, 4], [16, 32, 96])); // 3
