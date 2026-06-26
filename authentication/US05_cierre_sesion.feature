Feature: Cierre de sesión 

  Background:
  Given que el usuario ha iniciado sesión en la plataforma

Scenario: Cierre de sesión exitoso
  When el usuario hace clic en el botón "Cerrar Sesión"
  Then el sistema destruye la sesión activa del usuario
  And lo redirige a la pantalla de inicio/login
  And impide el acceso a las pantallas internas mediante el botón "Atrás"
