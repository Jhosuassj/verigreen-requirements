Feature: Guardado de productos sostenibles

  Background:
    Given que el consumidor inició sesión
    And se encuentra en la pantalla de un producto que le interesa

  Scenario: Agregar a favoritos de forma exitosa
    When el consumidor hace clic en el ícono de "Corazón" o "Guardar"
    Then el sistema añade el producto a la lista de favoritos del usuario
    And el ícono cambia de estado a "Guardado"

  Scenario: Quitar un producto de favoritos
    Given que el producto ya se encuentra en la lista de favoritos del usuario
    When el consumidor hace clic nuevamente en el ícono de "Corazón" o "Guardar"
    Then el sistema elimina el producto de la lista de favoritos del usuario
    And el ícono cambia de estado a "No guardado"

  Scenario: Consultar la lista de favoritos
    When el usuario va a la sección "Mis Favoritos" de su perfil
    Then el sistema lista todos los productos que guardó previamente

  Scenario: Consultar la lista de favoritos vacía
    Given que el usuario no ha guardado ningún producto previamente
    When el usuario va a la sección "Mis Favoritos" de su perfil
    Then el sistema muestra el mensaje "Aún no has guardado productos. Explora y guarda tus favoritos aquí"
