Feature: Administracion de roles y permisos 

  Background:
  Given que el administrador se encuentra en el panel de "Gestión de Usuarios"

Scenario: Cambio de rol exitoso
  When el administrador selecciona a un usuario específico
  And cambia su rol de "Consumidor" a "Auditor"
  And guarda los cambios
  Then el sistema actualiza los permisos del usuario de inmediato en su próximo inicio de sesión
