Feature: Registro de organización

  Background:
  Given que el representante empresarial se encuentra en el formulario de registro de organizaciones

Scenario: Envío exitoso de solicitud de registro
  When el representante ingresa el nombre de la organización, RUC/ID fiscal y documentos de sustento
  And hace clic en "Enviar Solicitud"
  Then el sistema registra la organización con estado "Pendiente de Validación"
  And muestra un mensaje confirmando que la solicitud está en revisión
