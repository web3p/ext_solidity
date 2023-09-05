/* ext_solidity extension for PHP */

#ifndef PHP_EXT_SOLIDITY_H
# define PHP_EXT_SOLIDITY_H

extern zend_module_entry ext_solidity_module_entry;
# define phpext_ext_solidity_ptr &ext_solidity_module_entry

# define PHP_EXT_SOLIDITY_VERSION "0.1.0"

# if defined(ZTS) && defined(COMPILE_DL_EXT_SOLIDITY)
ZEND_TSRMLS_CACHE_EXTERN()
# endif

#endif	/* PHP_EXT_SOLIDITY_H */
