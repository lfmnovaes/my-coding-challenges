<?php
/* First Reverse - coderbyte.com
  Have the function FirstReverse(str) take the str parameter being passed and
  return the string in reversed order. For example: if the input string is
  "Hello World and Coders" then your program should return the string
  "sredoC dna dlroW olleH". 
*/

function FirstReverse($str) {
  return strrev($str);
}

$example1 = "Hello World and Coders";
echo FirstReverse($example1) . "\n"; // "sredoC dna dlroW olleH"

?>
