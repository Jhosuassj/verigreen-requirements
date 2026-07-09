Feature: Recuperación de contraseña

  Background:
    Given que el usuario se encuentra en la pantalla de recuperación de contraseña

  Scenario: Recuperación exitosa
    When el usuario ingresa un correo electrónico asociado a una cuenta activa
    And hace clic en "Enviar enlace"
    Then el sistema envía un correo electrónico con un botón para confirmar la recuperación

  Scenario: Recuperación fallida por correo no registrado
    When el usuario ingresa un correo electrónico que no existe en el sistema
    And hace clic en "Enviar enlace"
    Then el sistema muestra un mensaje de error que dice "No se encontró el correo electrónico registrado en la plataforma"

  Scenario: Recuperación fallida por campo de correo vacío
    When el usuario deja el campo de correo electrónico vacío
    And hace clic en "Enviar enlace"
    Then el sistema bloquea el envío de la solicitud
    And muestra el mensaje "Debe ingresar un correo electrónico para continuar"
