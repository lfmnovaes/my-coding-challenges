// https://www.hackerrank.com/challenges/two-strings/problem
/*
 * Complete the 'twoStrings' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. STRING s1
 *  2. STRING s2
 */

function twoStrings(s1, s2) {
  let chars = new Set(s1.split(''));
  let chars2 = s2.split('');
  for (let i = 0; i < chars2.length; i++) {
    if (chars.has(chars2[i])) {
      return 'YES';
    }
  }
  return 'NO';
}

console.log(twoStrings('hello', 'world')); // YES
console.log(twoStrings('hi', 'world')); // NO
