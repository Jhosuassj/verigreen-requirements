Feature: Escaneo de código QR 

  Background:
  Given que el consumidor se encuentra en la pantalla principal de la app móvil
  And ha otorgado permisos de acceso a la cámara

Scenario: Escaneo exitoso de un código QR VeriGreen
  When el consumidor apunta la cámara al código QR de un producto sostenible
  And el sistema reconoce el código QR
  Then el sistema redirige al usuario a la pantalla de detalle ambiental de ese producto específico

Scenario: Escaneo de un código QR no registrado
  When el consumidor escanea un código QR que no pertenece a la plataforma VeriGreen
  Then el sistema muestra un mensaje de error: "Código QR no reconocido por VeriGreen"
