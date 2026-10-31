

# Sesión 2 - Tablas y pruebas de escritorio

## 1. ValidarRegistro

Condición: `edad >= 14 Y respuesta = "S"`

### Tabla de verdad

- A = `edad >= 14`
- B = `respuesta = "S"`

| A | B | A Y B | Salida |
|---|---|-------|--------|
| V | V | V | Registro exitoso |
| V | F | F | No puedes registrarte |
| F | V | F | No puedes registrarte |
| F | F | F | No puedes registrarte |

### Prueba de escritorio

| edad | respuesta | edad >= 14 | respuesta = "S" | Salida |
|------|-----------|------------|-----------------|--------|
| 20 | s | V | V | Registro exitoso |
| 14 | S | V | V | Registro exitoso |
| 13 | s | F | V | No puedes registrarte |
| 20 | n | V | F | No puedes registrarte |
| 10 | n | F | F | No puedes registrarte |

---

## 2. ValidarEdad

Condición de validez: `edad >= 0 Y edad <= 120`

### Tabla de verdad

- A = `edad >= 0`
- B = `edad <= 120`

| A | B | A Y B | Resultado |
|---|---|-------|-----------|
| V | V | V | Edad válida |
| V | F | F | Edad no válida (edad > 120) |
| F | V | F | Edad no válida (edad < 0) |
| F | F | F | Imposible |

### Tabla de decisión

| Condición | Resultado |
|---|---|
| edad < 0 | Edad no válida |
| 0 <= edad < 18 | Edad válida: menor de edad |
| 18 <= edad <= 120 | Edad válida: mayor de edad |
| edad > 120 | Edad no válida |

### Prueba de escritorio

| edad | edad >= 0 | edad <= 120 | edad >= 18 | Salida |
|------|-----------|-------------|------------|--------|
| -1 | F | V | (no aplica) | Edad no válida |
| 0 | V | V | F | Edad válida: menor de edad |
| 17 | V | V | F | Edad válida: menor de edad |
| 18 | V | V | V | Edad válida: mayor de edad |
| 120 | V | V | V | Edad válida: mayor de edad |
| 121 | V | F | (no aplica) | Edad no válida |

---

## 3. Parqueadero

### Reglas

| Regla | Valor |
|---|---|
| Tarifa carro (tipo 1) | $4.000 por hora |
| Tarifa moto (tipo 2) | $2.000 por hora |
| Tiempo gratis | Hasta 15 minutos |
| Cobro | Por hora iniciada (redondeo hacia arriba) |
| Tope máximo | $30.000 |
| Descuento con factura | 50 % (después del tope) |

### Tabla de decisión

| Condición | Resultado |
|---|---|
| minutos < 0 | Error: minutos negativos |
| tipo distinto de 1 y 2 | Error: tipo no válido |
| minutos <= 15 | $0 |
| minutos > 15 | horas x tarifa, máximo $30.000 |
| minutos > 15 y factura = "S" | El valor se divide entre 2 |

### Prueba de escritorio (varios casos)

| tipo | minutos | factura | tarifa | horas | valor antes del tope | valor final | Salida |
|---|---|---|---|---|---|---|---|
| 1 | 10 | N | 4000 | (no aplica) | (no aplica) | 0 | Valor a pagar: $0 |
| 1 | 15 | N | 4000 | (no aplica) | (no aplica) | 0 | Valor a pagar: $0 |
| 1 | 16 | N | 4000 | 1 | 4000 | 4000 | Valor a pagar: $4000 |
| 1 | 60 | N | 4000 | 1 | 4000 | 4000 | Valor a pagar: $4000 |
| 1 | 61 | N | 4000 | 2 | 8000 | 8000 | Valor a pagar: $8000 |
| 1 | 61 | S | 4000 | 2 | 8000 | 4000 | Valor a pagar: $4000 |
| 2 | 180 | N | 2000 | 3 | 6000 | 6000 | Valor a pagar: $6000 |
| 1 | 600 | N | 4000 | 10 | 40000 | 30000 | Valor a pagar: $30000 |
| 1 | 600 | S | 4000 | 10 | 40000 | 15000 | Valor a pagar: $15000 |
| 3 | 30 | N | 0 | (no aplica) | (no aplica) | (no aplica) | Tipo de vehículo no válido |
| 1 | -5 | N | (no aplica) | (no aplica) | (no aplica) | (no aplica) | Los minutos no pueden ser negativos |

### Prueba de escritorio
 anio | anio % 4 | anio % 100 | anio % 400 | (A Y NO B) | C | Salida |
|------|----------|------------|------------|------------|---|--------|
| 2024 | 0 | 24 | 24 | V | F | 2024 es bisiesto |
| 1900 | 0 | 0 | 300 | F | F | 1900 no es bisiesto |
| 2000 | 0 | 0 | 0 | F | V | 2000 es bisiesto |
| 2026 | 2 | 26 | 26 | F | F | 2026 no es bisiesto |