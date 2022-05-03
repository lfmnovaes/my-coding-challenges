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
