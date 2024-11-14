<?php
/* Bracket Matcher - coderbyte.com
  Have the function BracketMatcher(str) take the str parameter being passed and
  return 1 if the brackets are correctly matched and each one is accounted for.
  Otherwise return 0. For example: if str is "(hello (world))", then the output
  should be 1, but if str is "((hello (world))", the the output should be 0
  because the brackets do not correctly match up. Only "(" and ")" will be
  used as brackets. If str contains no brackets return 1.
*/

function BracketMatcher($str) {
  $stack = [];
  $len = strlen($str);

  for ($i = 0; $i < $len; $i++) {
    if ($str[$i] == '(') {
      array_push($stack, '(');
    } else if ($str[$i] == ')') {
      if (empty($stack)) {
        return 0;
      }
      array_pop($stack);
    }
  }

  return empty($stack) ? 1 : 0;
}

$example1 = "(hello (world))";
echo BracketMatcher($example1) . "\n"; // 1

$example2 = "((hello (world))";
echo BracketMatcher($example2) . "\n"; // 0

?>
