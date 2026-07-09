Feature: Recibimiento de alertas ambientales

  Background:
    Given que el sistema detecta una inconsistencia, retiro de certificación o denuncia validada sobre un producto

  Scenario: Envío automático de alerta al consumidor
    When el consumidor tiene guardado dicho producto en sus favoritos o historial de escaneo
    Then el sistema envía una notificación push/correo advirtiendo sobre el cambio de estado de sostenibilidad del producto

  Scenario: Consumidor sin relación previa con el producto afectado
    Given que el consumidor no tiene guardado dicho producto en sus favoritos ni en su historial de escaneo
    Then el sistema no envía ninguna notificación al consumidor

  Scenario: Consulta del detalle de una alerta recibida
    Given que el consumidor recibió una notificación sobre un cambio de estado de sostenibilidad
    When el consumidor hace clic en la notificación
    Then el sistema muestra el detalle del motivo del cambio (inconsistencia, retiro de certificación o denuncia validada)
