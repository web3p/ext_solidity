--TEST--
test1() Basic test
--EXTENSIONS--
ext_solidity
--FILE--
<?php
$ret = test1();

var_dump($ret);
?>
--EXPECT--
The extension ext_solidity is loaded and working!
NULL
