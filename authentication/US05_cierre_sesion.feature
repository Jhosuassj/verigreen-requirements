Feature: Cierre de sesión

  Background:
    Given que el usuario ha iniciado sesión en la plataforma

  Scenario: Cierre de sesión exitoso
    When el usuario hace clic en el botón "Cerrar Sesión"
    Then el sistema redirige al usuario a la pantalla de inicio/login
    And impide el acceso a las pantallas internas mediante el botón "Atrás"

  Scenario: Cierre de sesión por inactividad prolongada
    Given que el usuario permanece inactivo durante el tiempo máximo permitido
    When el usuario intenta interactuar nuevamente con la plataforma
    Then el sistema cierra la sesión automáticamente
    And muestra el mensaje "Su sesión ha expirado por inactividad, inicie sesión nuevamente"
