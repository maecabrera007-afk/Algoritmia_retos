Algoritmo Semaforo
    Definir valor Como Entero;

    Escribir "Ingrese un Valor";
    leer valor

    Si valor < 0 Entonces
        Escribir "Error";
    
    SiNo
        Si valor = 0 Entonces
            Escribir "Rojo";  
        SiNo
            Si valor >= 1 Y valor <= 10 Entonces
            Escribir "Amarillo";
        
            SiNo
                Escribir "Verde";
                
            FinSi
            
        FinSi   
    
    FinSi
    
FinAlgoritmo