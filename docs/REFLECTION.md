# Reflection

## 1. GOTO statements
GOTO is useful when you want to jump straight to a label, for example to skip the rest of a block, and I used it in A1 and A2 to send the program to the right message. The risk is that the code stops reading top to bottom, so it is harder to follow and debug. In A3 I tried to jump into the middle of an IF block and Oracle refused with PLS-00375. I learned that GOTO can only reach a label in the same block or an enclosing one. I fixed it by moving the label outside the IF.

## 2. Rewriting without GOTO
My A1 program needed three labels, four GOTO statements and a NULL at the end. In A4 the same job is done with IF / ELSIF / ELSE, and each branch prints its own message. It is shorter, runs from top to bottom, and is much easier to read and maintain.

## 3. Functions
Writing logic once as a function means I can reuse it anywhere. In B5 I called four functions in one SELECT, and they ran once for each employee row. I also nested fn_annual_salary inside fn_calculate_tax, so the annual salary was calculated first and then used for the tax. I learned that a function called from SQL cannot return BOOLEAN, so my payroll validator in C1 returns text such as 'VALID' or 'INVALID: reason'.

## 4. Exception handling
In fn_dept_name, a SELECT INTO that finds no row raises NO_DATA_FOUND, so I caught it and return 'Unknown' instead of letting the function crash. In fn_calculate_tax I used RAISE_APPLICATION_ERROR(-20001, 'Invalid salary') for negative salaries, and I tested it and saw ORA-20001. In fn_validate_payroll I used the same NO_DATA_FOUND handling to return 'INVALID: employee not found'.

## 5. Difficulties I faced
- **Empty files on GitHub:** my first SQL files contained only the file name, because I typed it into the code area instead of pasting the code. I fixed them by editing each file and pasting the code into the big text area.
- **Nested folders:** I typed the folder name twice when creating files, which created folders like 01_goto/01_goto and 02_functions/02_functions. I also tried to move files with `../` and GitHub gave a "malformed path" error. I solved it by creating each file again with the correct path and then deleting the wrong copies.
- **Wrong tax result:** I expected a tax of 1,860,000 for 9,600,000 but my function returned 2,040,000. I worked it out by hand (960,000 + 1,080,000) and confirmed that the function was correct and my expected number was wrong.
- **Typo in a file name:** one screenshot was uploaded as A2_ouput.png. I renamed it to A2_output.png and moved all six screenshots into the screenshots folder.
