<?php 
/* Find Intersection
  Have the function FindIntersection(strArr) read the array of strings stored in
  strArr which will contain 2 elements: the first element will represent a list
  of comma-separated numbers sorted in ascending order, the second element will
  represent a second list of comma-separated numbers (also sorted). Your goal is
  to return a comma-separated string containing the numbers that occur in elements
  of strArr in sorted order. If there is no intersection, return the string false.
*/

function FindIntersection($strArr) {
  $list1 = explode(", ", $strArr[0]);
  $list2 = explode(", ", $strArr[1]);

  $intersection = array_intersect($list1, $list2);
  $output = implode(",", $intersection);

  if (empty($intersection)) {
    $output = "false";
  }

  return $output;
}
   
$example1 = array("1, 3, 4, 7, 13", "1, 2, 4, 13, 15");
echo FindIntersection($example1) . "\n"; // 1,4,13

?>
