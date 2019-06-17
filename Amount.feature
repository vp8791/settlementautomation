Feature: Amount Validator
  As a User
  I want to  validate Amount as per specifications  i.e Amount must be between 1 and 9999
  So that I don't need to validate by laoding file in landing zone and validate it

  Scenario Outline: Validate  Amount <amount> and validation outcome is <ValidOrInvalid>
    Given I have  a  amount which is valid or invalid
    When I validate amount <OrderDate>
    Then the Amount validation result should be should be <ValidOrInvalid>

    Examples:
      | OrderDate | ValidOrInvalid |
      | 1         | true           |
      | 10        | true           |
      | 100       | true           |
      | 1000      | true           |
      | 9999      | true           |
      | 99991     | false          |
      | 99990     | false          |
      | -1        | false          |
