Feature: Validacion de empresas registradas

  Background:
  Given que el auditor ambiental ha iniciado sesión
  And se encuentra en el "Panel de Auditoría"

Scenario: Validación conforme de una organización
  When el auditor revisa la documentación de una empresa pendiente
  And selecciona la opción "Aprobar Validación"
  Then el sistema cambia el estado de la empresa a "Validada"
  And genera un registro de auditoría con la firma del auditor
