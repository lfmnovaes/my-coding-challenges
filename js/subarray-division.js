// https://www.hackerrank.com/challenges/the-birthday-bar/problem
/*
 * Complete the 'birthday' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY s
 *  2. INTEGER d
 *  3. INTEGER m
 */

function birthday(s, d, m) {
  let count = 0;
  for (let i = 0; i < s.length; i++) {
    let sum = 0;
    for (let j = i; j < i + m; j++) {
      sum += s[j];
    }
    if (sum === d) {
      count++;
    }
  }
  return count;
}

console.log(birthday([1, 2, 1, 3, 2], 3, 2)); // 2
console.log(birthday([1, 1, 1, 1, 1, 1], 3, 2)); // 0
console.log(birthday([4], 4, 1)); // 1
