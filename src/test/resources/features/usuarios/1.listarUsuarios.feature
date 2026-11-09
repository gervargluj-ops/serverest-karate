Feature: Obtener usuarios

  Scenario: Obtener lista de usuarios

    Given url baseUrl
    And path 'usuarios'
    When method GET

    Then status 200
    And match response.quantidade == '#number'
    And match response.usuarios == '#[]'

  Scenario: Obtener lista de usuarios con el path con caracteres especiales.

    Given url baseUrl
    And path '@@@@@@'
    When method GET
    Then status 405

