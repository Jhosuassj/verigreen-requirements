Feature: Integridad de registros ambientales mediante Blockchain
  Como auditor ambiental
  Quiero que los registros ambientales almacenados mediante Blockchain sean inmutables
  Para garantizar la integridad y trazabilidad de las evidencias asociadas a los productos

  Background:
    Given que una evidencia ambiental ha sido validada
    And la evidencia se encuentra registrada mediante Blockchain

  Scenario: Impedir la modificación de un registro ambiental
    Given que existe un registro ambiental almacenado en Blockchain
    When un usuario intenta modificar directamente el registro original
    Then el sistema debe impedir la modificación
    And el registro original debe permanecer sin cambios

  Scenario: Registrar una nueva versión de evidencia ambiental
    Given que una empresa necesita actualizar una evidencia ambiental
    When registra una nueva versión de la información
    Then el sistema debe crear un nuevo registro
    And debe mantener disponible el historial de versiones anteriores

  Scenario Outline: Validación de integridad del registro
    Given que existe un registro ambiental con identificador <registro>
    When se realiza la operación <operacion>
    Then el sistema debe generar el resultado <resultado>

    Examples:
      | registro | operacion            | resultado                  |
      | REG001   | consultar            | acceso_permitido           |
      | REG002   | modificar_original   | modificacion_bloqueada     |
      | REG003   | eliminar_original    | eliminacion_bloqueada      |
      | REG004   | registrar_version    | nueva_version_registrada   |