<?php
/* First Factorial - coderbyte.com
  Have the function FirstFactorial(num) take the num parameter being passed and
  return the factorial of it. For example: if num = 4, then your program should
  return 24 (4 * 3 * 2 * 1). For the test cases, the range will be between 1 and
  18 and the input will always be an integer.
*/

function FirstFactorial($num) {
  if ($num == 1) {
    return 1;
  }

  return $num * FirstFactorial($num - 1);
}

$example1 = 4;
echo FirstFactorial($example1) . "\n"; // 24

$example2 = 8;
echo FirstFactorial($example2) . "\n"; // 40320

?>
