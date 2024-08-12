//Suma de los primeros N números naturales:Escribe un programa que calcule la suma de los primeros N números naturales. El valor de N estará almacenado en RAM[0].

@0  // Dirección donde se almacena N

D=M // le asigno a D el valor lo que hay en 0, es decir, el valor de N 

@i  // Dirección de i (@16)

M=1 //inicializamos a i = 1

@sum // Dirección de sum (@17)

M=0 // inicializamos la variable sum = 0

// Bucle para sumar los primeros N números naturales
(LOOP)
  @i // Dirección de i
  D=M // Le asigno a D el valor que hay en mi contador, en un inicio es 1
  @0 // Dirección de N

  D=D-M //Aquí quise hacer que a N se le restara el contador y se le asignara ese valor a D pero no funcionó y solo lo volteé   D = i - N

  @END // Si i >= N, salta al final
  D;JGE // Salto si D >= 0

  @i // Dirección de i
  D=M // Le asigno a D el valor que hay en i (sigue siendo 1)
  @sum // Dirección de sum
  M=D+M // Al valor que hay en @17 (0) le vamos a  sumar el valor  que hay en i (sum = sum + i), es decir, (suma=1+0)

  @i // Dirección de i
  M=M+1 //Le sumo uno  al contador i = i + 1

  @LOOP // Salta de vuelta al inicio del bucle
  0;JMP

(END)
  @END       // Salta a sí mismo en un bucle infinito, esto sirve para que el codigo no se vaya a partes de la RAM donde no programé y así evitar que hayan codigos dañinos
  0;JMP

