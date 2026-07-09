Feature: Tiempo de respuesta en la verificación de productos
  Como consumidor
  Quiero obtener el resultado de la verificación de un producto en un tiempo máximo de 3 segundos
  Para tomar una decisión de compra rápida sin interrumpir mi proceso de compra

  Background:
    Given que el consumidor se encuentra en el módulo de verificación de productos
    And el producto se encuentra registrado en VeriGreen

  Scenario: Verificación completada dentro del tiempo establecido
    Given que el consumidor escanea el código QR de un producto
    When el sistema procesa la solicitud de verificación
    Then el resultado de sostenibilidad debe mostrarse en un tiempo máximo de 3 segundos
    And el sistema debe mostrar la información ambiental del producto

  Scenario: Tiempo de respuesta superior al límite establecido
    Given que el consumidor realiza una solicitud de verificación
    When el tiempo de procesamiento supera los 3 segundos
    Then el sistema debe mostrar un indicador de procesamiento
    And debe registrar una incidencia de rendimiento

  Scenario Outline: Validación del tiempo de respuesta
    Given que el consumidor solicita verificar un producto
    When el sistema procesa la solicitud en <tiempo_respuesta> segundos
    Then el resultado esperado debe ser <resultado>

    Examples:
      | tiempo_respuesta | resultado                 |
      | 1                | verificacion_exitosa      |
      | 2                | verificacion_exitosa      |
      | 3                | verificacion_exitosa      |
      | 4                | incidencia_de_rendimiento |
      | 5                | incidencia_de_rendimiento |