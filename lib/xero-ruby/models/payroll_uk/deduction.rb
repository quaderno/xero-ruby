=begin
#Xero Payroll UK

#This is the Xero Payroll API for orgs in the UK region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollUk
  require 'bigdecimal'

  class Deduction
    # The Xero identifier for Deduction
    attr_accessor :deduction_id
    
    # Name of the deduction
    attr_accessor :deduction_name
    
    # Deduction Category type
    attr_accessor :deduction_category
    CAPITAL_CONTRIBUTIONS = "CapitalContributions".freeze
    CHILD_CARE_VOUCHER = "ChildCareVoucher".freeze
    MAKING_GOOD = "MakingGood".freeze
    POSTGRADUATE_LOAN_DEDUCTIONS = "PostgraduateLoanDeductions".freeze
    PRIVATE_USE_PAYMENTS = "PrivateUsePayments".freeze
    SALARY_SACRIFICE = "SalarySacrifice".freeze
    STAKEHOLDER_PENSION = "StakeholderPension".freeze
    STAKEHOLDER_PENSION_POST_TAX = "StakeholderPensionPostTax".freeze
    STUDENT_LOAN_DEDUCTIONS = "StudentLoanDeductions".freeze
    UK_OTHER = "UkOther".freeze
    
    # Xero identifier for Liability Account
    attr_accessor :liability_account_id
    
    # Identifier of a record is active or not.
    attr_accessor :current_record
    
    # Standard amount of the deduction
    attr_accessor :standard_amount
    
    # Identifier of reduces super liability
    attr_accessor :reduces_super_liability
    
    # Identifier of reduces tax liability
    attr_accessor :reduces_tax_liability
    
    # determine the calculation type whether fixed amount or percentage of gross
    attr_accessor :calculation_type
    FIXED_AMOUNT = "FixedAmount".freeze
    PERCENTAGE_OF_GROSS = "PercentageOfGross".freeze
    
    # Percentage of gross
    attr_accessor :percentage
    
    # Identifier of subject To NIC
    attr_accessor :subject_to_nic
    
    # Identifier of subject To Tax
    attr_accessor :subject_to_tax
    
    # Identifier of reduced by basic rate applicable or not
    attr_accessor :is_reduced_by_basic_rate
    
    # Identifier for apply to pension calculations
    attr_accessor :apply_to_pension_calculations
    
    # Identifier of calculating on qualifying earnings
    attr_accessor :is_calculating_on_qualifying_earnings
    
    # Identifier of applicable for pension or not
    attr_accessor :is_pension
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'deduction_id' => :'deductionId',
        :'deduction_name' => :'deductionName',
        :'deduction_category' => :'deductionCategory',
        :'liability_account_id' => :'liabilityAccountId',
        :'current_record' => :'currentRecord',
        :'standard_amount' => :'standardAmount',
        :'reduces_super_liability' => :'reducesSuperLiability',
        :'reduces_tax_liability' => :'reducesTaxLiability',
        :'calculation_type' => :'calculationType',
        :'percentage' => :'percentage',
        :'subject_to_nic' => :'subjectToNIC',
        :'subject_to_tax' => :'subjectToTax',
        :'is_reduced_by_basic_rate' => :'isReducedByBasicRate',
        :'apply_to_pension_calculations' => :'applyToPensionCalculations',
        :'is_calculating_on_qualifying_earnings' => :'isCalculatingOnQualifyingEarnings',
        :'is_pension' => :'isPension'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'deduction_id' => :'String',
        :'deduction_name' => :'String',
        :'deduction_category' => :'String',
        :'liability_account_id' => :'String',
        :'current_record' => :'Boolean',
        :'standard_amount' => :'BigDecimal',
        :'reduces_super_liability' => :'Boolean',
        :'reduces_tax_liability' => :'Boolean',
        :'calculation_type' => :'String',
        :'percentage' => :'BigDecimal',
        :'subject_to_nic' => :'Boolean',
        :'subject_to_tax' => :'Boolean',
        :'is_reduced_by_basic_rate' => :'Boolean',
        :'apply_to_pension_calculations' => :'Boolean',
        :'is_calculating_on_qualifying_earnings' => :'Boolean',
        :'is_pension' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollUk::Deduction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollUk::Deduction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'deduction_id')
        self.deduction_id = attributes[:'deduction_id']
      end

      if attributes.key?(:'deduction_name')
        self.deduction_name = attributes[:'deduction_name']
      end

      if attributes.key?(:'deduction_category')
        self.deduction_category = attributes[:'deduction_category']
      end

      if attributes.key?(:'liability_account_id')
        self.liability_account_id = attributes[:'liability_account_id']
      end

      if attributes.key?(:'current_record')
        self.current_record = attributes[:'current_record']
      end

      if attributes.key?(:'standard_amount')
        self.standard_amount = attributes[:'standard_amount']
      end

      if attributes.key?(:'reduces_super_liability')
        self.reduces_super_liability = attributes[:'reduces_super_liability']
      end

      if attributes.key?(:'reduces_tax_liability')
        self.reduces_tax_liability = attributes[:'reduces_tax_liability']
      end

      if attributes.key?(:'calculation_type')
        self.calculation_type = attributes[:'calculation_type']
      end

      if attributes.key?(:'percentage')
        self.percentage = attributes[:'percentage']
      end

      if attributes.key?(:'subject_to_nic')
        self.subject_to_nic = attributes[:'subject_to_nic']
      end

      if attributes.key?(:'subject_to_tax')
        self.subject_to_tax = attributes[:'subject_to_tax']
      end

      if attributes.key?(:'is_reduced_by_basic_rate')
        self.is_reduced_by_basic_rate = attributes[:'is_reduced_by_basic_rate']
      end

      if attributes.key?(:'apply_to_pension_calculations')
        self.apply_to_pension_calculations = attributes[:'apply_to_pension_calculations']
      end

      if attributes.key?(:'is_calculating_on_qualifying_earnings')
        self.is_calculating_on_qualifying_earnings = attributes[:'is_calculating_on_qualifying_earnings']
      end

      if attributes.key?(:'is_pension')
        self.is_pension = attributes[:'is_pension']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @deduction_name.nil?
        invalid_properties.push('invalid value for "deduction_name", deduction_name cannot be nil.')
      end

      if @liability_account_id.nil?
        invalid_properties.push('invalid value for "liability_account_id", liability_account_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @deduction_name.nil?
      deduction_category_validator = EnumAttributeValidator.new('String', ["CapitalContributions", "ChildCareVoucher", "MakingGood", "PostgraduateLoanDeductions", "PrivateUsePayments", "SalarySacrifice", "StakeholderPension", "StakeholderPensionPostTax", "StudentLoanDeductions", "UkOther"])
      return false unless deduction_category_validator.valid?(@deduction_category)
      return false if @liability_account_id.nil?
      calculation_type_validator = EnumAttributeValidator.new('String', ["FixedAmount", "PercentageOfGross"])
      return false unless calculation_type_validator.valid?(@calculation_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deduction_category Object to be assigned
    def deduction_category=(deduction_category)
      validator = EnumAttributeValidator.new('String', ["CapitalContributions", "ChildCareVoucher", "MakingGood", "PostgraduateLoanDeductions", "PrivateUsePayments", "SalarySacrifice", "StakeholderPension", "StakeholderPensionPostTax", "StudentLoanDeductions", "UkOther"])
      unless validator.valid?(deduction_category)
        fail ArgumentError, "invalid value for \"deduction_category\", must be one of #{validator.allowable_values}."
      end
      @deduction_category = deduction_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] calculation_type Object to be assigned
    def calculation_type=(calculation_type)
      validator = EnumAttributeValidator.new('String', ["FixedAmount", "PercentageOfGross"])
      unless validator.valid?(calculation_type)
        fail ArgumentError, "invalid value for \"calculation_type\", must be one of #{validator.allowable_values}."
      end
      @calculation_type = calculation_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          deduction_id == o.deduction_id &&
          deduction_name == o.deduction_name &&
          deduction_category == o.deduction_category &&
          liability_account_id == o.liability_account_id &&
          current_record == o.current_record &&
          standard_amount == o.standard_amount &&
          reduces_super_liability == o.reduces_super_liability &&
          reduces_tax_liability == o.reduces_tax_liability &&
          calculation_type == o.calculation_type &&
          percentage == o.percentage &&
          subject_to_nic == o.subject_to_nic &&
          subject_to_tax == o.subject_to_tax &&
          is_reduced_by_basic_rate == o.is_reduced_by_basic_rate &&
          apply_to_pension_calculations == o.apply_to_pension_calculations &&
          is_calculating_on_qualifying_earnings == o.is_calculating_on_qualifying_earnings &&
          is_pension == o.is_pension
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [deduction_id, deduction_name, deduction_category, liability_account_id, current_record, standard_amount, reduces_super_liability, reduces_tax_liability, calculation_type, percentage, subject_to_nic, subject_to_tax, is_reduced_by_basic_rate, apply_to_pension_calculations, is_calculating_on_qualifying_earnings, is_pension].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::PayrollUk.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
