# Módulo: Programación para Seguridad Informática
# Examen recuperatorio práctico - Grupo 1

# 1) Obtener la lista de usuarios locales y guardarla en una variable
$usuarios = Get-LocalUser
$cantidadUsuarios = @($usuarios).Count

# 2) El usuario ingresa un número entero como cantidad límite de referencia
[int]$limite = Read-Host "Ingrese un número entero como cantidad límite"

Write-Host "Cantidad total de usuarios locales: $cantidadUsuarios"

# 3) Operadores: total > límite  Y  total < 10 (evaluación simultánea)
$condicion = ($cantidadUsuarios -gt $limite) -and ($cantidadUsuarios -lt 10)

# 4) Estructura condicional con mensaje según se cumpla o no
if ($condicion) {
    Write-Host "Se cumple la condición: hay más de $limite usuarios y menos de 10."
}
else {
    Write-Host "No se cumple la condición: la cantidad de usuarios no es mayor a $limite y menor a 10."
}

# 5) Cierre: versión de PowerShell del entorno actual
Write-Host "Versión de PowerShell: $($PSVersionTable.PSVersion)"
