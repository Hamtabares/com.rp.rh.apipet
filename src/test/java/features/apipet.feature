Feature: Yo como usuario de PET quiere crear un cliente para tener informacion

  Scenario: crear cliente
    * header Content-Type = 'application/json;charset=UTF-8'
    * def requestBody = read ('utils/AddPet.json')


    Given url 'https://petstore.swagger.io/v2/pet'
    And request requestBody
    When method POST
    Then status 200

