# PHP Opcode Analysis Kit

A set of Docker images to test out PHP code against the interpreter to see the resulting opcodes with multiple PHP versions.

## Usage

Edit the `test.php` file with the code you would like to test. From there, run the bash/PowerShell script to build the containers and test the code. 

### Linux

```bash
./run.sh
```

### Windows

```powershell
.\run.ps1
```
## Test File

```php
<?php

$x = 'a';
$y = $x.' b';
echo $y;

$x = 'a';
$y = "$x b";
echo $y;

$x = 'a';
$y = "{$x} b";
echo $y;
```

## Example Output

```bash
branch: #  0; line:     3-   14; sop:     0; eop:    14; out1:  -2
path #1: 0,
Finding entry points
Branch analysis from position: 0
Jump found. (Code = 62) Position 1 = -2
filename:       /test.php
function name:  (null)
number of ops:  15
compiled vars:  !0 = $x, !1 = $y
line     #* E I O op                           fetch          ext  return  operands
-------------------------------------------------------------------------------------
   3     0  E >   ASSIGN                                                   !0, 'a'
   4     1        CONCAT                                           ~1      !0, '+b'
         2        ASSIGN                                                   !1, ~1
   5     3        ECHO                                                     !1
   7     4        ASSIGN                                                   !0, 'a'
   8     5        ADD_VAR                                          ~4      !0
         6        ADD_STRING                                       ~4      ~4, '+b'
         7        ASSIGN                                                   !1, ~4
   9     8        ECHO                                                     !1
  11     9        ASSIGN                                                   !0, 'a'
  12    10        ADD_VAR                                          ~7      !0
        11        ADD_STRING                                       ~7      ~7, '+b'
        12        ASSIGN                                                   !1, ~7
  13    13        ECHO                                                     !1
  14    14      > RETURN                                                   1

Finding entry points
Branch analysis from position: 0
1 jumps found. (Code = 62) Position 1 = -2
filename:       /test.php
function name:  (null)
number of ops:  15
compiled vars:  !0 = $x, !1 = $y
line     #* E I O op                           fetch          ext  return  operands
-------------------------------------------------------------------------------------
   3     0  E >   ASSIGN                                                   !0, 'a'
   4     1        CONCAT                                           ~3      !0, '+b'
         2        ASSIGN                                                   !1, ~3
   5     3        ECHO                                                     !1
   7     4        ASSIGN                                                   !0, 'a'
   8     5        NOP
         6        FAST_CONCAT                                      ~6      !0, '+b'
         7        ASSIGN                                                   !1, ~6
   9     8        ECHO                                                     !1
  11     9        ASSIGN                                                   !0, 'a'
  12    10        NOP
        11        FAST_CONCAT                                      ~9      !0, '+b'
        12        ASSIGN                                                   !1, ~9
  13    13        ECHO                                                     !1
  14    14      > RETURN                                                   1

branch: #  0; line:     3-   14; sop:     0; eop:    14; out0:  -2
path #1: 0,
Finding entry points
Branch analysis from position: 0
1 jumps found. (Code = 62) Position 1 = -2
filename:       /test.php
function name:  (null)
number of ops:  15
compiled vars:  !0 = $x, !1 = $y
line     #* E I O op                           fetch          ext  return  operands
-------------------------------------------------------------------------------------
   3     0  E >   ASSIGN                                                   !0, 'a'
   4     1        CONCAT                                           ~3      !0, '+b'
         2        ASSIGN                                                   !1, ~3
   5     3        ECHO                                                     !1
   7     4        ASSIGN                                                   !0, 'a'
   8     5        NOP
         6        FAST_CONCAT                                      ~6      !0, '+b'
         7        ASSIGN                                                   !1, ~6
   9     8        ECHO                                                     !1
  11     9        ASSIGN                                                   !0, 'a'
  12    10        NOP
        11        FAST_CONCAT                                      ~9      !0, '+b'
        12        ASSIGN                                                   !1, ~9
  13    13        ECHO                                                     !1
  14    14      > RETURN                                                   1

branch: #  0; line:     3-   14; sop:     0; eop:    14; out0:  -2
path #1: 0,
Finding entry points
Branch analysis from position: 0
1 jumps found. (Code = 62) Position 1 = -2
filename:       /test.php
function name:  (null)
number of ops:  15
compiled vars:  !0 = $x, !1 = $y
line     #* E I O op                           fetch          ext  return  operands
-------------------------------------------------------------------------------------
   3     0  E >   ASSIGN                                                   !0, 'a'
   4     1        CONCAT                                           ~3      !0, '+b'
         2        ASSIGN                                                   !1, ~3
   5     3        ECHO                                                     !1
   7     4        ASSIGN                                                   !0, 'a'
   8     5        NOP
         6        FAST_CONCAT                                      ~6      !0, '+b'
         7        ASSIGN                                                   !1, ~6
   9     8        ECHO                                                     !1
  11     9        ASSIGN                                                   !0, 'a'
  12    10        NOP
        11        FAST_CONCAT                                      ~9      !0, '+b'
        12        ASSIGN                                                   !1, ~9
  13    13        ECHO                                                     !1
  14    14      > RETURN                                                   1

branch: #  0; line:     3-   14; sop:     0; eop:    14; out0:  -2
path #1: 0,
```

Contributions are always welcome and happy testing!
