# Big numbers

## Challenge description

Simple understanding in c++ will help you in getting flag.

Handout: [Challenge file](https://github.com/revathi2001/inctf2021/blob/main/Big)

Challenge Author: [Revathi](https://twitter.com/Revathi01740772)

## Writeup

- This is cpp reversing challenge. There are set of values which are xored with ``0xab``. The output of these values are again xored with return values of ``f`` function. 

- Finally ascii values of our input string are compared with output values returned after xoring with ``f`` function. Writing the python code for the above process, we get the flag.

### Exploit
``def f(n):
	if n == 0:
		return 0
	if n == 1 or n == 2:
		return 1
	x=f(n>>1)
	y=f(n//2 + 1)
	if(not n &1):
		return (x*((2*y)-x))
	else:
		return x ** 2 + y ** 2


flag=[]

l=[194,196,201,221,206,213,196,150,142,237,195,149,11,115,444,686,815,1775,2691,4235,6809,10766,17844,28462,46548,75214,121586,196492,317831,514168,832178,1346071,2178505,3524404]

l_new=[]

for i in l:
	l_new.append((i^(int("0xab",16))))

for i in range(len(l_new)):
	x=l_new[i]^f(i)
	y=chr(x)
	print(y,end="")``

### Flag
```inctf{g00d_g01ng_y0u_g0t_the_f1ag}```

