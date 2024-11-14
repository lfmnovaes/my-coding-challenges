<?php
/* Codeland Username Validation - coderbyte.com
  Have the function CodelandUsernameValidation(str) take the str parameter being passed and determine if the string is a valid username according to the following rules:
  1. The username is between 4 and 25 characters.
  2. It must start with a letter.
  3. It can only contain letters, numbers, and the underscore character.
  4. It cannot end with an underscore character.
*/

function CodelandUsernameValidation($str) {
  if (strlen($str) < 4 || strlen($str) > 25) {
    return "false";
  }
  if (!ctype_alpha($str[0])) {
    return "false";
  }
  if (!preg_match('/^[a-zA-Z0-9_]+$/', $str)) {
    return "false";
  }
  if (preg_match('/_$/', $str)) {
    return "false";
  }
  return "true";
}

$example1 = "aa_";
echo CodelandUsernameValidation($example1) . "\n"; // false

$example2 = "u__hello_world";
echo CodelandUsernameValidation($example2) . "\n"; // true

?>