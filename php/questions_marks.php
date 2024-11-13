<?php
/* Questions Marks
  Have the function QuestionsMarks(str) take the str string parameter, which will
  contain single digit numbers, letters, and question marks, and check if there are
  exactly 3 question marks between every pair of two numbers that add up to 10.
  If so, then your program should return the string true, otherwise it should
  return the string false. If there aren't any two numbers that add up to 10 in
  the string, then your program should return false as well.
*/

function QuestionsMarks($str) {
  $found = false;
  $len = strlen($str);
  for ($i = 0; $i < $len; $i++) {
    if (is_numeric($str[$i])) {
      $num1 = intval($str[$i]);
      $qm_count = 0;

      for ($j = $i + 1; $j < $len; $j++) {
        if ($str[$j] == '?') {
          $qm_count++;
        }

        if (is_numeric($str[$j])) {
          $num2 = intval($str[$j]);
          if ($num1 + $num2 == 10) {
            if ($qm_count == 3) {
              $found = true;
            } else {
              return "false";
            }
          }
          break;
        }
      }
    }
  }
  return $found ? "true" : "false";
}

$example1 = "aa6?9";
echo QuestionsMarks($example1) . "\n"; // false

$example2 = "acc?7??sss?3rr1??????5";
echo QuestionsMarks($example2) . "\n"; // true

$example3 = "5??aaaaaaaaaaaaaaaaaaa?5?5";
echo QuestionsMarks($example3) . "\n"; // false

$example4 = "9???1???9??1???9";
echo QuestionsMarks($example4) . "\n"; // false

$example5 = "5??aaaaaaaaaaaaaaaaaaa?5?a??5";
echo QuestionsMarks($example5) . "\n"; // true

?>
