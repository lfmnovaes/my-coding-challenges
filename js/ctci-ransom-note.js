// https://www.hackerrank.com/challenges/ctci-ransom-note/problem
/*
 * Complete the 'checkMagazine' function below.
 *
 * The function accepts following parameters:
 *  1. STRING_ARRAY magazine
 *  2. STRING_ARRAY note
 */

function checkMagazine(magazine, note) {
  let ans = 'Yes';
  let hash_mag = magazine.reduce((acc, curr) => {
    return acc[curr] ? ++acc[curr] : (acc[curr] = 1), acc;
  }, {});
  note.forEach((n) => {
    if (hash_mag[n] > 0) {
      hash_mag[n] = hash_mag[n] - 1;
    } else {
      ans = 'No';
      return;
    }
  });
  return ans; // use console.log(ans) on hackerrank
}

function checkMagazineSlow(magazine, note) {
  let ans = 'Yes';
  const countWords = magazine.reduce((acc, curr) => {
    return acc[curr] ? ++acc[curr] : (acc[curr] = 1), acc;
  }, {});
  let BreakException = {};
  try {
    note.forEach((e) => {
      if (Object.keys(countWords).some((el) => el === e)) {
        if (countWords[e] >= 1) {
          countWords[e] -= 1;
        } else if (countWords[e] === 0) {
          ans = 'No';
          throw BreakException;
        }
      } else {
        ans = 'No';
        throw BreakException;
      }
    });
  } catch (e) {
    if (e !== BreakException) throw e;
  }
  return ans; // use console.log(ans) on hackerrank
}

// for newer NodeJS only

function checkMagazineNew(magazine, note) {
  magSet = new Set(magazine);
  let ans = 'Yes';
  note.forEach((noteEl) => {
    if (magSet.delete(noteEl) === false) {
      ans = 'No';
    }
  });
  return ans;
}

console.log(
  checkMagazine(
    ['give', 'me', 'one', 'grand', 'today', 'night'],
    ['give', 'one', 'grand', 'today']
  )
); // Yes

console.log(
  checkMagazine(
    ['two', 'times', 'three', 'is', 'not', 'four'],
    ['two', 'times', 'two', 'is', 'four']
  )
); // No

console.log(
  checkMagazine(
    ['ive', 'got', 'a', 'lovely', 'bunch', 'of', 'coconuts'],
    ['ive', 'got', 'some', 'coconuts']
  )
); // No
