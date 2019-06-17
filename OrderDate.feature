Feature: Order Date Validator
  As a User
  I want to  validate Order date as per specifications  i.e Date must be past date  or current date
  So that I don't need to validate by laoding file in landing zone and validate it

  Scenario Outline: Validate  Order Date <OrderDate> and validation outcome is <ValidOrInvalid>
    Given I have  a  orderDate which is valid or invalid
    When I validate Order Date <OrderDate>
    Then the Order date validation result should be should be <ValidOrInvalid>

    Examples:
      | OrderDate		 | ValidOrInvalid |
      | 11-01-2019      |  true   |
      | 11-02-2019      |  true   |
      | 11-03-2019      |  true   |
      | 11-04-2019      |  true   |
      | 11-05-2019      |  true   |
      | 03-06-2019      |  true   |
      | 11-06-2019      |  false  |
      | 11-07-2019      |  false  |
      | 11-08-2019      |  false  |