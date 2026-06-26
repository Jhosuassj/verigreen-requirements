Feature: Creacion de cuenta en VeriGreen

  Background:
  Given que el usuario se encuentra en la pantalla de registro de VeriGreen

Scenario: Registro exitoso
  When el usuario ingresa un correo electrónico válido
  And ingresa una contraseña que incluye al menos 8 caracteres, un número y un signo
  And hace clic en el botón "Registrarse"
  Then el sistema crea la cuenta exitosamente
  And redirige al usuario a la pantalla de bienvenida

Scenario Outline: Intento de creación de cuenta con datos inválidos
  When el usuario ingresa un <correo> y una <contrasenia>
  And hace clic en el botón "Registrarse"
  Then el sistema muestra un mensaje de error diciendo <mensaje>

  Examples:
    | correo            | contrasenia | mensaje                                                |
    | "test@email.com"  | "123"       | "La contraseña debe tener al menos 8 caracteres."      |
    | "correo_invalido" | "Pass123!"  | "Por favor, ingresa un correo electrónico válido."     |
