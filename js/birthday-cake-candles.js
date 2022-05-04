// https://www.hackerrank.com/challenges/birthday-cake-candles/problem
/*
 * Complete the 'birthdayCakeCandles' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY candles as parameter.
 */

function birthdayCakeCandles(candles) {
  const maxN = Math.max(...candles);
  return candles.filter((c) => c === maxN).length;
}

console.log(birthdayCakeCandles([3, 2, 1, 3])); // 2
console.log(birthdayCakeCandles([4, 4, 1, 3])); // 2
console.log(birthdayCakeCandles([1, 2, 3, 4, 5])); // 1
