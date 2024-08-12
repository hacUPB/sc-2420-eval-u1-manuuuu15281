@5   //ME UBICO EN LA POSICIÓN 5 PARA DARLE ESE VALOR A A Y LUEGO PASARSELO A D
D=A

@0  //UBICO EL VALOR 5 TOMADO DE LA POSICIÓN DE LA RAM Y LO UBICO EN LA M DE LA POSICIÓN 0
M=D

@7  //ME UBICO EN LA POSICIÓN 7 PARA DARLE ESE VALOR A A Y LUEGO PASARSELO A D
D=A

@1  //UBICO EL VALOR 7 TOMADO DE LA POSICIÓN DE LA RAM Y LO UBICO EN LA M DE LA POSICIÓN 1
M=D

@0 // uso la posición 0 para hacer D=0
D=A

@2 //La posición 2 en este caso es nuestro acumulador, por eso lo igualamos a D, para inicializarla en 0
M=D


(LOOP) //las funciones son en mayusculas y las variables en minúsculas

    @0   
    D=M  //le asigno a D el valor de lo que haya en la posición 0 de la RAM 

    @2    //le sumo al dato que haya en la posición 2(M=0) el valor de lo que haya en la posición 0 (5), este sera el numero que se sumara repetidas veces
    M=D+M

    @1 //El dato de la posición 1 me dice la cantidad de veces  que debo sumar el dato de la posición 0, es decir, es el encargado de hacer funcionar el bucle
    M=M-1 // al acumulador le resto 1, es decir, al ciclo le queda sumar 6 veces más el numero 5
    D=M   //le asigno a D el valor del acumulador para usarlo en el condicional

    @LOOP //Llamo a la función, preguntarle esta parte al profe 
    D;JGT //uso el jump if(D>0) 

(END)

    @END //no entiendo esta parte 
    0;JMP

