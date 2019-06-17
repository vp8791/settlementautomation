Feature: Payment Mode Validator
  As a User
  I want to  validate Payment Mode  as per specifications  i.eAllowed values are "ChipAndPin", "Signature", "BlueTooth", "Mobile", "Online", "Cheque"
  So that I don't need to validate by laoding file in landing zone and validate it

  Scenario Outline: Validate  payment Mode  <paymentMode> and validation outcome is <ValidOrInvalid>
    Given I have  a  Payment Mode which is valid or invalid
    When I validate Payment Mode  <paymentMode>
    Then the Payment Mode validation result should be should be <ValidOrInvalid>

    Examples:
      | paymentMode | ValidOrInvalid |
      | ChipAndPin  | true           |
      | Signature   | true           |
      | BlueTooth   | true           |
      | Mobile      | true           |
      | Online      | true           |
      | Cheque      | true           |
      | XXXXX       | false          |
