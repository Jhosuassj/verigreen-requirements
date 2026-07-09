Feature: Soporte de usuarios concurrentes
  Como administrador de la plataforma
  Quiero que VeriGreen soporte al menos 10000 usuarios concurrentes
  Para garantizar la continuidad del servicio durante periodos de alta demanda

  Background:
    Given que la plataforma VeriGreen se encuentra disponible
    And los servicios principales se encuentran operativos

  Scenario: Plataforma soporta 10000 usuarios concurrentes
    Given que existen 10000 usuarios conectados simultáneamente
    When los usuarios realizan operaciones de consulta y verificación de productos
    Then las funcionalidades principales deben continuar disponibles
    And el sistema no debe presentar interrupciones críticas

  Scenario: Plataforma supera la capacidad de usuarios establecida
    Given que la cantidad de usuarios concurrentes supera los 10000 usuarios
    When el sistema detecta degradación en el rendimiento
    Then debe registrar una incidencia de capacidad
    And debe activar mecanismos de control de carga

  Scenario Outline: Evaluación de carga concurrente
    Given que existen <usuarios> usuarios conectados simultáneamente
    When realizan solicitudes de verificación
    Then el sistema debe presentar el estado <estado_servicio>

    Examples:
      | usuarios | estado_servicio          |
      | 1000     | estable                  |
      | 5000     | estable                  |
      | 8000     | estable                  |
      | 10000    | estable                  |
      | 12000    | degradacion_controlada   |