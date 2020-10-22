## Automation API REST Testing for restapiexample.com
This is a small example to set up an automation API REST test environment with Java, Gradle, JUnit, and Cucumber.

### Project 
* [http://dummy.restapiexample.com/](http://dummy.restapiexample.com/) 

### Tests
##### Employees
* Get all employees
* Get employee by Id
* Create new employee
* Update employee by Id
* Delete employeeItem by Id

### Run
```sh
gradle clean cucumber -Psuite=@Regression
```
