# -*- autoconf -*-
#
# Copyright (C) 2026 Barry Schwartz
# 
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

# serial 1

# CHEM_CHECK_C_GCC_STATEMENT_EXPRESSIONS
# --------------------------------------
#
# AC_DEFINE the variable HAVE_GCC_STATEMENT_EXPRESSIONS. Cached `yes'
# or `no' as chem_cv_c_have_gcc_statement_expressions.
#
AC_DEFUN([CHEM_CHECK_C_GCC_STATEMENT_EXPRESSIONS],
[AC_CACHE_CHECK(
  [whether the C compiler supports GNU C statement expressions],
  [chem_cv_c_have_statement_expressions],
  [chem_cv_c_have_statement_expressions=no
   AC_LANG_PUSH([C])
   AC_COMPILE_IFELSE([
     AC_LANG_PROGRAM([[]],
       [[({int x = 1; int y = 2; int z = x + y; z;}) == 3;]]) ],
     [chem_cv_c_have_statement_expressions=yes
      AC_DEFINE([HAVE_GCC_STATEMENT_EXPRESSIONS],[1],
        [Define to 1 if the C compiler supports GNU C statement expressions.])])])
   AC_LANG_POP([C])
])
