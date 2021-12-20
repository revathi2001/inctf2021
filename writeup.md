# Big numbers

## Challenge description

Simple understanding in c++ will help you in getting flag.

Handout: [Challenge file](https://github.com/revathi2001/inctf2021/blob/main/Big)

Challenge Author: [Revathi](https://twitter.com/Revathi01740772)

## Writeup

- This is cpp reversing challenge. There are set of values which are xored with ``0xab``. The output of these values are again xored with return values of ``f`` function. 

- Finally ascii values of our input string are compared with output values returned after xoring with ``f`` function. Writing the python code for the above process, we get the flag.

### Exploit
![https://github.com/revathi2001/inctf2021/blob/main/exploit.py]

### Flag
```inctf{g00d_g01ng_y0u_g0t_the_f1ag}```

