Feature: Aprobación de solicitudes empresariales

  Background:
  Given que el administrador está en la sección de "Solicitudes Pendientes de Alta"

Scenario: Aprobación final de cuenta empresarial
  When el administrador aprueba la solicitud de una empresa previamente validada por el auditor
  Then el sistema activa la cuenta empresarial
  And envía un correo de notificación al representante informando que ya puede publicar productos
