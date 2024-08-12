(KEYONE)         
        @KBD  //Atajo para llamar la posición @24576
        D=M  //La letra que yo presione se coloca el numero segun el codigo ASCII en el espacio del teclado (@24576)
        @77  //La letra que elegí fue la M, (77 en el codigo ASCII)
        D=D-A  //Aquí llamamos a la posición 77 y lo que hacemos es que a D (es el numero de la letra que se presione) se le resta 77 y si da 0 quiere decir que
               //la letra presionada es M

        @PREPINTAR
        D;JEQ //Saltar a prepintar si D=0 (quiere decir que si se está presionando la letra M) 

(VOLVER)         
        @KBD  
        D=M  
        @77  
        D=D-A 

        @KEYONE  
        D;JNE   //volver a (KEYONE) si D!=0 y repetir       
        
        
(PREPINTAR) // Aquí preparo las posiciones para pintar      
        
        @16384 
        D=A //Le asigno a D el valor de 16384
        @pantalla //creé una variable llamada pantalla para asignarle el valor de D y más adelante poderlo ir incrementado
        M=D
        @16  //Aqui voy a crear la cantidad de registros que quiero llenar, en este caso quiero la mitad de la pantalla 
        D=A
        @cont //se le asigna ese valor al contador para poder decrementarlo más adelante 
        M=D

(PINTAR)

        @pantalla //Aquí usamos punteros para poder ir cambiando la posición de la pantalla
        A=M //Me ubico en el número de la posición, en este caso A=16385 
        M=-1 // a la posición @16385 le asigno el valor -1, lo que quiere decir que quiero que pinte todo un registro 
        
        @pantalla //incremento en 1 la pantalla
        M=M+1

        @cont //le resto uno al contador y le asigno el valor a D para poder compararla en el condicional 
        MD=M-1

        @PINTAR 
        D;JNE


        (SALTO) //usaré este ciclo para que salte y pinte la siguiente línea, lo que no se como hacer es que se detenga en la mitad de la pantalla y pase a pintar la otra mitad
            @16 //Estoy tratando de que salte a la siguiente línea
            D=A 
        
            @pantalla //Apliqué el tip del profe con el que me trato de explicar como hacer una diagonal, le sumé 16 registros a la variable pantalla para que saltara a
            M=D+M    // la siguiente línea.

            @16  //Aquí indico que necesito que pinte otra vez los primeros 16 registros de la sgte línea 
            D=A

            @cont 
            M=D

            @PINTAR // si D no es igual a 0 que salte otra vez a PINTAR, pero no sé como hacer que se detenga este doble ciclo :)
            D;JNE 

            @KEYONE
            D;JEQ


        

        



        
               