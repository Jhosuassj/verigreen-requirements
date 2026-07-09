Feature: Aprobación de solicitudes empresariales

  Background:
    Given que el administrador está en la sección de "Solicitudes Pendientes de Alta"

  Scenario: Aprobación final de cuenta empresarial
    When el administrador aprueba la solicitud de una empresa previamente validada por el auditor
    Then el sistema activa la cuenta empresarial
    And envía un correo de notificación al representante informando que ya puede publicar productos

  Scenario: Rechazo de solicitud en la etapa de aprobación final
    When el administrador rechaza la solicitud de una empresa previamente validada por el auditor
    And ingresa el motivo del rechazo
    Then el sistema mantiene la cuenta empresarial inactiva
    And envía un correo de notificación al representante informando el motivo del rechazo
