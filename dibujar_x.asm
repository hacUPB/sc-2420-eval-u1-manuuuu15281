(KEYONE)
     @KBD 
     D=M 
     @88
     D=D-A 


(VOLVER)
     @KBD 
     D=M 
     @88 
     D=D-A 
    
    @KEYONE 
    D;JNE 

(PREPINTARD1)
    @16384 
    D=A 

    @pantalla 
    M=D 

    @32
    D=A 

    @cont 
    M=D 
    

(PINTARD1)
    @pantalla
    A=M 
    M=-1

    @33 
    D=A 
    
    @pantalla
    M=D+M  

    @cont 
    MD=M-1 

    @PINTAR
    D;JNE 

    @KEYONE
    D;JEQ

(PREPINTARD2)
    @16415
    D=A 

    @pantalla 
    M=D 

    @32 
    D=A 

    @cont 
    M=D 

(PINTARD2)
    @pantalla 
    A=M 
    M=-1
    
    @31
    D=A 

    @pantalla 
    M=D-M 

    @cont 
    MD=M-1 

    @PINTARD2
    D;JNE 

    
    




    



