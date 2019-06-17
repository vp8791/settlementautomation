Feature: Transaction Reference Validator
  As a User
  I want to  validate Transaction Reference as per specifications  i.eTransaction refernce should be between 10 and 16 chars
  So that I don't need to validate by laoding file in landing zone and validate it

  Scenario Outline: Validate  Transaction Reference <transactionReference> and validation outcome is <ValidOrInvalid>
    Given I have  a  Transaction Reference which is valid or invalid
    When I validate Transaction Reference <transactionReference>
    Then the Transaction Reference validation result should be should be <ValidOrInvalid>

    Examples:
      | transactionReference | ValidOrInvalid |
      | A123456789          | true           |
      | A12345678          | false           |
      | A123456789111111          | true           |
      | A1234567891111112          | false          |