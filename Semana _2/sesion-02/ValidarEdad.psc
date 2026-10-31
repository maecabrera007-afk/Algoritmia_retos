Algoritmo ValidarEdad
    Definir edad Como Entero;

    Escribir "¿Cuántos años tienes?";
    Leer edad;

    Si edad >= 0 Y edad <= 120 Entonces
        Si edad >= 18 Entonces
            Escribir "Edad válida: mayor de edad";
        SiNo
            Escribir "Edad válida: menor de edad";
        FinSi
    SiNo
        Escribir "Edad no válida";
    FinSi
FinAlgoritmo