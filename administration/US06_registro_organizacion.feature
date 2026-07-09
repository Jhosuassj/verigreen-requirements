Feature: Registro de organización

  Background:
    Given que el representante empresarial se encuentra en el formulario de registro de organizaciones

  Scenario: Envío exitoso de solicitud de registro
    When el representante ingresa el nombre de la organización, RUC/ID fiscal y documentos de sustento
    And hace clic en "Enviar Solicitud"
    Then el sistema registra la organización con estado "Pendiente de Validación"
    And muestra un mensaje confirmando que la solicitud está en revisión

  Scenario: Documento de sustento con formato no permitido
    When el representante adjunta un documento de sustento en un formato distinto a PDF o JPG
    And hace clic en "Enviar Solicitud"
    Then el sistema rechaza el archivo adjunto
    And muestra el mensaje "El formato del documento no es válido. Solo se aceptan archivos PDF o JPG"
