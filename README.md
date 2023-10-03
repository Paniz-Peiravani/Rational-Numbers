# Rational Number Arithmetic in MIPS Assembly

This repository contains MIPS assembly language code for performing arithmetic operations on rational numbers. The code includes four programs: `add_rational.asm`, `sub_rational.asm`, `mul_rational.asm`, and `div_rational.asm`.

## Programs

- `add_rational.asm`: Adds two rational numbers.
- `sub_rational.asm`: Subtracts two rational numbers.
- `mul_rational.asm`: Multiplies two rational numbers.
- `div_rational.asm`: Divides two rational numbers.
- 
## Example Usage

Here are example usages of each program:

```assembly

#~~~ Adding Rational Numbers ~~~#

$ ./add_rational.asm

Enter rational(a, b): Enter a
10
Enter b
5
Enter rational(c, d): Enter c
3
Enter d
2

Result: rational(10, 5) + rational(3, 2) = rational(13, 10)

$ ./sub_rational.asm

Enter rational(a, b): Enter a
5
Enter b
2
Enter rational(c, d): Enter c
3
Enter d
4

Result: rational(5, 2) - rational(3, 4) = rational(7, 4)

$ ./mul_rational.asm

Enter rational(a, b): Enter a
1
Enter b
3
Enter rational(c, d): Enter c
2
Enter d
5

Result: rational(1, 3) * rational(2, 5) = rational(2, 15)

$ ./div_rational.asm

Enter rational(a, b): Enter a
2
Enter b
5
Enter rational(c, d): Enter c
7
Enter d
0

Error: Denominator cannot be ZERO!!!
