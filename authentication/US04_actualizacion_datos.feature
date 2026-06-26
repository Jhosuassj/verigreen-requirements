Feature: Actualización de datos personales

  Background:
  Given que el usuario ha iniciado sesión en su cuenta
  And se encuentra en la sección "Mi Perfil"

Scenario: Actualización exitosa de datos
  When el usuario modifica sus datos personales con información válida
  And hace clic en "Guardar Cambios"
  Then el sistema actualiza la información en la base de datos
  And muestra un mensaje de confirmación: "Datos actualizados con éxito"

Scenario: Intento de actualización con campos obligatorios vacíos
  When el usuario deja un campo obligatorio en blanco
  And hace clic en "Guardar Cambios"
  Then el sistema no guarda los cambios
  And muestra un mensaje de alerta indicando los campos requeridos
