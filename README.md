# Tcl Division by Zero Bug
This repository demonstrates a common error in Tcl: division by zero within a custom procedure. The `bug.tcl` file contains the buggy code, while `bugSolution.tcl` shows how to handle this error gracefully.

## Bug Description
The `badproc` procedure doesn't handle the case where the first argument `a` is 0, leading to a division by zero error when invoked with `a` as 0. 

## Solution
The solution uses `if` statements to check if the first argument is 0. If it is, it returns an appropriate error message or value. Additionally, it uses the Tcl `catch` command to handle potential exceptions during division, thus providing more robust error handling.

## How to reproduce the bug
1. Execute `bug.tcl` with a value of 0 for the first parameter of `badproc`.

## How to test the solution
1. Execute `bugSolution.tcl` with various inputs for the first parameter of `badproc`, including 0 and non-zero values.  It will display appropriate messages and results.