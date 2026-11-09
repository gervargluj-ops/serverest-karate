Feature: Buscar usuario

  Scenario: Buscar usuario por ID.

    * def usuariosRequest = read('classpath:data/usuariosDataSensible.json')
    * def email = 'gerson' + java.util.UUID.randomUUID() + '@mail.com'
    * set usuariosRequest[2].email = email

    Given url baseUrl
    And path 'usuarios'
    And request usuariosRequest[2]
    When method POST
    Then status 201

    * def userId = response._id

    Given url baseUrl
    And path 'usuarios', userId
    When method GET
    Then status 200
    And match response.nome == 'Gerson Test'
    And match response.email == email

  Scenario: Buscar usuario con un id invalido.

    Given url baseUrl
    And path 'usuarios', 'ID_EXISTENTE'
    When method GET
    Then status 400



