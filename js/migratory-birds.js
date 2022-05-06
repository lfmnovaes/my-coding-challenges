/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

function migratoryBirds(arr) {
  let birdCount = {};
  for (let i = 0; i < arr.length; i++) {
    if (birdCount[arr[i]]) {
      birdCount[arr[i]]++;
    } else {
      birdCount[arr[i]] = 1;
    }
  }
  return Object.keys(birdCount).sort((a, b) => birdCount[b] - birdCount[a])[0];
}

console.log(migratoryBirds([1, 4, 4, 4, 5, 3])); // 4
console.log(migratoryBirds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])); // 3
