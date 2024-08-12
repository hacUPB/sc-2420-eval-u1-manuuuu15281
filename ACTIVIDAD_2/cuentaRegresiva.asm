//Cuenta regresiva desde N hasta 0:Escribe un programa que realice una cuenta regresiva desde N hasta 0 y almacene cada valor en posiciones 
//consecutivas de la memoria RAM comenzando desde RAM[1]. El valor de N se encuentra en RAM[0].

@0 // Dirección donde se almacena N (RAM[0])

D=M // Le asigno a D el valor que hay en R[0] D = N

@N // variable temporal para N (@16) contador#1

M=D  // Guardo a N en una variable temporal

// Inicialización del índice de almacenamiento

@indice // Dirección del índice (@17) contador#2

M=1 // Guardar el índice inicial en la variable temporal (indice=1)

// Bucle para la cuenta regresiva y almacenamiento
(LOOP)
  @N // Dirección temporal de N
  D=M // Le asigno a D el valor de lo que haya en la posición @16 D = N
  @indice // Dirección del índice

  A=M // A = índice
  M=D  // Guardar N en RAM[indice]
  
  // Decrementar N, aquí estoy restando para hacer el conteo regresivo, el valor de N es el que uso en el condicional N!=0
  @N
  M=M-1 // N = N - 1

  // Incrementar el índice de almacenamiento, aquí incremento la posición en la que quiero 
  @indice
  M=M+1 // index = index + 1

  // Comprobar si N >= 0
  @N
  D=M  // le asigno el nuevo valor de N a D (D = N)
  @LOOP // Si N >= 0, saltar al inicio del bucle
  D;JGE

// Fin del programa (bucle infinito)
(END)
  @END
  0;JMP
