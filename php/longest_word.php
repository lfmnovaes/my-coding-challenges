<?php
/* Longest Word - coderbyte.com
  Have the function LongestWord(sen) take the sen parameter being passed and
  return the largest word in the string. If there are two or more words that are
  the same length, return the first word from the string with that length.
  Ignore punctuation and assume sen will not be empty. Words may also contain
  numbers, for example "Hello world123 567"
*/  

function LongestWord($sen) {
  $words = preg_split('/[^a-zA-Z0-9]+/', $sen, -1, PREG_SPLIT_NO_EMPTY);
  $longest = "";

  foreach ($words as $word) {
    if (strlen($word) > strlen($longest)) {
      $longest = $word;
    }
  }
  return $longest;
}

$example1 = "fun&!! time";
echo LongestWord($example1) . "\n"; // "time"

$example2 = "I love dogs";
echo LongestWord($example2) . "\n"; // "love"

$example3 = "Hello world123 567";
echo LongestWord($example3) . "\n"; // "Hello"

?>
