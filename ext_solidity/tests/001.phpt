--TEST--
Check if ext_solidity is loaded
--EXTENSIONS--
ext_solidity
--FILE--
<?php
echo 'The extension "ext_solidity" is available';
?>
--EXPECT--
The extension "ext_solidity" is available
