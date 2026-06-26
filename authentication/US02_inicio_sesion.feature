Feature: Inicio de sesión

  Background:
  Given que el usuario está registrado en la plataforma
  And se encuentra en la pantalla de inicio de sesión

Scenario: Inicio de sesión exitoso
  When el usuario ingresa su correo electrónico correcto
  And ingresa su contraseña correcta
  And hace clic en "Iniciar Sesión"
  Then el sistema le da acceso a la cuenta
  And lo redirige al panel principal

Scenario: Inicio de sesión fallido por credenciales incorrectas
  When el usuario ingresa un correo electrónico o contraseña incorrectos
  And hace clic en "Iniciar Sesión"
  Then el sistema muestra una pantalla de error con el mensaje "Credenciales inválidas"
