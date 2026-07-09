Feature: Disponibilidad de la plataforma VeriGreen
  Como consumidor
  Quiero que VeriGreen mantenga una disponibilidad mensual mínima del 99.5 por ciento
  Para acceder a las funcionalidades de verificación durante mis procesos de compra

  Background:
    Given que el consumidor intenta acceder a VeriGreen

  Scenario: Plataforma disponible para realizar verificaciones
    Given que los servicios de VeriGreen se encuentran operativos
    When el consumidor solicita verificar un producto
    Then el sistema debe procesar la solicitud
    And debe mostrar el resultado de la verificación

  Scenario: Registro de una interrupción del servicio
    Given que la plataforma no puede procesar solicitudes
    When se detecta una interrupción del servicio
    Then el sistema debe registrar la incidencia
    And debe contabilizar el tiempo de indisponibilidad

  Scenario Outline: Evaluación del nivel de disponibilidad mensual
    Given que se ha calculado una disponibilidad mensual de <porcentaje>
    When el sistema evalúa el nivel de disponibilidad
    Then debe registrar el estado <estado>

    Examples:
      | porcentaje | estado                    |
      | 100.0      | objetivo_cumplido          |
      | 99.9       | objetivo_cumplido          |
      | 99.5       | objetivo_cumplido          |
      | 99.4       | objetivo_no_cumplido       |
      | 98.0       | objetivo_no_cumplido       |