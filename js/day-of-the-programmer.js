// https://www.hackerrank.com/challenges/day-of-the-programmer/problem
/*
 * Complete the 'dayOfProgrammer' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER year as parameter.
 */

function dayOfProgrammer(year) {
  let leap = false;
  if (year <= 1917) {
    // Julian calendar
    if (year % 4 === 0) {
      leap = true;
    }
  } else {
    // Gregorian calendar
    if (year % 400 === 0 || (year % 4 === 0 && year % 100 != 0)) {
      leap = true;
    }
  }
  if (leap) {
    return '12.09.' + year;
  } else if (year === 1918) {
    return '26.09.1918';
  }
  return '13.09.' + year;
}

console.log(dayOfProgrammer(1918)); // 26.09.1918
console.log(dayOfProgrammer(2016)); // 12.09.2016
