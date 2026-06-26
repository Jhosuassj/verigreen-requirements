Feature: Actualizacion de información empresarial

  Background:
  Given que el representante empresarial inició sesión
  And su organización está validada
  And se encuentra en el panel de "Datos de la Empresa"

Scenario: Actualización exitosa del perfil empresarial
  When el representante modifica la información de contacto o descripción de la empresa
  And hace clic en "Actualizar"
  Then el sistema guarda los nuevos datos de la organización inmediatamente
