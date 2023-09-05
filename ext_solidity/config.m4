dnl config.m4 for extension ext_solidity

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary.

dnl If your extension references something external, use 'with':

dnl PHP_ARG_WITH([ext_solidity],
dnl   [for ext_solidity support],
dnl   [AS_HELP_STRING([--with-ext_solidity],
dnl     [Include ext_solidity support])])

dnl Otherwise use 'enable':

PHP_ARG_ENABLE([ext_solidity],
  [whether to enable ext_solidity support],
  [AS_HELP_STRING([--enable-ext_solidity],
    [Enable ext_solidity support])],
  [no])

if test "$PHP_EXT_SOLIDITY" != "no"; then
  dnl Write more examples of tests here...

  dnl Remove this code block if the library does not support pkg-config.
  dnl PKG_CHECK_MODULES([LIBFOO], [foo])
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBS, EXT_SOLIDITY_SHARED_LIBADD)

  dnl If you need to check for a particular library version using PKG_CHECK_MODULES,
  dnl you can use comparison operators. For example:
  dnl PKG_CHECK_MODULES([LIBFOO], [foo >= 1.2.3])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo < 3.4])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo = 1.2.3])

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-ext_solidity -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/ext_solidity.h"  # you most likely want to change this
  dnl if test -r $PHP_EXT_SOLIDITY/$SEARCH_FOR; then # path given as parameter
  dnl   EXT_SOLIDITY_DIR=$PHP_EXT_SOLIDITY
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for ext_solidity files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       EXT_SOLIDITY_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$EXT_SOLIDITY_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the ext_solidity distribution])
  dnl fi

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-ext_solidity -> add include path
  dnl PHP_ADD_INCLUDE($EXT_SOLIDITY_DIR/include)

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-ext_solidity -> check for lib and symbol presence
  dnl LIBNAME=EXT_SOLIDITY # you may want to change this
  dnl LIBSYMBOL=EXT_SOLIDITY # you most likely want to change this

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   AC_DEFINE(HAVE_EXT_SOLIDITY_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your ext_solidity library.])
  dnl ], [
  dnl   $LIBFOO_LIBS
  dnl ])

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are not using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $EXT_SOLIDITY_DIR/$PHP_LIBDIR, EXT_SOLIDITY_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_EXT_SOLIDITY_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your ext_solidity library.])
  dnl ],[
  dnl   -L$EXT_SOLIDITY_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(EXT_SOLIDITY_SHARED_LIBADD)

  dnl In case of no dependencies
  AC_DEFINE(HAVE_EXT_SOLIDITY, 1, [ Have ext_solidity support ])

  PHP_NEW_EXTENSION(ext_solidity, ext_solidity.c, $ext_shared)
fi
