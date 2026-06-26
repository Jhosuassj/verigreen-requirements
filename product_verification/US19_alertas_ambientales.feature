Feature: Recibimiento de alertas ambientales 

  Background:
  Given que el sistema detecta una inconsistencia, retiro de certificación o denuncia validada sobre un producto

Scenario: Envío automático de alerta al consumidor
  When el consumidor tiene guardado dicho producto en sus favoritos o historial de escaneo
  Then el sistema envía una notificación push/correo advirtiendo sobre el cambio de estado de sostenibilidad del producto
