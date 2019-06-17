Feature: Mcc Code Validator
  As a User
  I want to  validate Mcc code as per specifications  i.e Must be 5 and 6 characters
  So that I don't need to validate by laoding file in landing zone and validate it

  Scenario Outline: Validate  mccCode <mccCode> and validation outcome is <ValidOrInvalid>
    Given I have  a  Mcc code which is valid or invalid
    When I validate Mcc Code <mccCode>
    Then the Mcc Code validation result should be should be <ValidOrInvalid>

    Examples:
      | mccCode | ValidOrInvalid |
      | A1234   | true           |
      | A12345  | true           |
      | A123451 | false          |
      | A       | false          |
      | A1      | false          |
      | A12     | false          |
      | A123    | false          |
