# Assembly Array Summation Bug

This repository demonstrates a common error in assembly language programming related to array iteration and loop counters.  The provided `bug.asm` file contains code that attempts to sum the elements of a word array.  However, due to an error in how the loop counter is managed, the code may produce unexpected results.  The `bugSolution.asm` file offers a corrected version.

**Bug:** The original code mishandles the loop counter, leading to inaccurate summation or potential crashes. The issue lies in the way the length is loaded and utilized in the loop counter.

**Solution:** The corrected code ensures proper handling of the loop counter by using a consistent and accurate approach, accurately representing the number of iterations required to sum all array elements.