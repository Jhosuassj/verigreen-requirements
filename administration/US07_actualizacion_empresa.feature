Feature: Actualización de información empresarial

  Background:
    Given que el representante empresarial inició sesión
    And su organización está validada
    And se encuentra en el panel de "Datos de la Empresa"

  Scenario: Actualización exitosa del perfil empresarial
    When el representante modifica la información de contacto o descripción de la empresa
    And hace clic en "Actualizar"
    Then el sistema muestra los datos actualizados en el panel
    And presenta un mensaje de confirmación "Información actualizada correctamente"

  Scenario: Intento de actualización con información de contacto inválida
    When el representante ingresa un correo electrónico o número de teléfono con formato inválido
    And hace clic en "Actualizar"
    Then el sistema bloquea el guardado de los cambios
    And muestra el mensaje "El formato de la información de contacto no es válido"
