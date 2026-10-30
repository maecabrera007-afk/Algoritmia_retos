Algoritmo AnoBisiesto
    Definir ano Como Entero

    Escribir "Ingrese un año:"
    Leer ano

    Si (ano % 4 = 0 Y ano % 100 <> 0) O (ano % 400 = 0) Entonces
        Escribir ano, " es bisiesto"
    SiNo
        Escribir ano, " no es bisiesto"
    FinSi
FinAlgoritmo