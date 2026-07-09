Feature: Administración de roles y permisos

  Background:
    Given que el administrador se encuentra en el panel de "Gestión de Usuarios"

  Scenario: Cambio de rol exitoso
    When el administrador selecciona a un usuario específico
    And cambia su rol de "Consumidor" a "Auditor"
    And guarda los cambios
    Then el sistema muestra el rol actualizado en el perfil del usuario
    And aplica los nuevos permisos en el próximo inicio de sesión del usuario

  Scenario: Intento de cambio de rol sin seleccionar un usuario
    When el administrador intenta guardar un cambio de rol sin haber seleccionado un usuario
    Then el sistema bloquea la acción
    And muestra el mensaje "Debe seleccionar un usuario para modificar su rol"
