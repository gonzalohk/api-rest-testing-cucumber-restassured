Feature: Employee CRUD feature
  As a user
  I would like to create/update/delete/get an employee
  @Regression
  Scenario Outline: create new employee
    Given I have access to http://dummy.restapiexample.com/ API
    When I send POST request to '/api/v1/create' with json
    """
    {"name":"<name>","salary":"<salary>","age":"<age>"}
    """
    Then I expect the response code 200
    And I get the property 'id' and save its value on EMPLOYEE_ID
    And I expect the response body is equal
    """
    {
      "status": "success",
      "data": {
          "name": "<name>",
          "salary": "<salary>",
          "age": "<age>",
          "id": "EXCLUDE"
      },
      "message": "Successfully! Record has been added."
    }
    """
    Examples:
      | name | salary | age |
      | jimmmy plaza | 2800 | 55 |

  @Regression
  Scenario: delete employee by id
    Given I have access to http://dummy.restapiexample.com/ API
    When I send DELETE request to '/api/v1/delete/EMPLOYEE_ID' with json
    """
    """
    Then I expect the response code 200

  @Regression
  Scenario: update employee data
    Given I have access to http://dummy.restapiexample.com/ API
    When I send PUT request to '/api/v1/update/10' with json
    """
    {"name":"Updated Name","salary":"10000","age":"30"}
    """
    Then I expect the response code 200

  @Regression
  Scenario: get an employee data by id
    Given I have access to http://dummy.restapiexample.com/ API
    When I send GET request to '/api/v1/employee/10' with json
    """
    """
    Then I expect the response code 200

  @Regression
  Scenario: get employees
    Given I have access to http://dummy.restapiexample.com/ API
    When I send GET request to '/api/v1/employees' with json
    """
    """
    Then I expect the response code 200