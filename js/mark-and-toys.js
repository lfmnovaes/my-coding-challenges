// https://www.hackerrank.com/challenges/mark-and-toys/problem
/*
 * Complete the 'maximumToys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY prices
 *  2. INTEGER k
 */

function maximumToys(prices, k) {
  let toys = 0;
  let sortedPrices = prices.sort((a, b) => a - b);
  for (let i = 0; i < sortedPrices.length; i++) {
    if (sortedPrices[i] <= k) {
      toys++;
      k -= sortedPrices[i];
    }
  }
  return toys;
}

console.log(maximumToys([1, 12, 5, 111, 200, 1000, 10], 50)); // 4
