Feature: Terminal Id Validator
  As a User
  I want to  validate Terminal Id as per specifications  i.e Terminal Id should be 5-6 characters and can contain alphabets and numbers
  So that I don't need to validate by laoding file in landing zone and validate it

  Scenario Outline: Validate  terminalId <terminalId> and validation outcome is <ValidOrInvalid>
    Given I have  a  Terminal Id which is valid or invalid
    When I validate Terminal Id <terminalId>
    Then the Terminal Id validation result should be should be <ValidOrInvalid>

    Examples:
      | terminalId | ValidOrInvalid |
      | A1234      | true           |
      | A12345     | true           |
      | A123451    | false          |
      | A          | false          |
      | A1         | false          |
      | A12        | false          |
      | A123       | false          |
