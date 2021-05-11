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

  class EmployeeStatutorySickLeave
    # The unique identifier (guid) of a statutory leave
    attr_accessor :statutory_leave_id
    
    # The unique identifier (guid) of the employee
    attr_accessor :employee_id
    
    # The unique identifier (guid) of the \"Statutory Sick Leave (non-pensionable)\" pay item
    attr_accessor :leave_type_id
    
    # The date when the leave starts
    attr_accessor :start_date
    
    # The date when the leave ends
    attr_accessor :end_date
    
    # the type of statutory leave
    attr_accessor :type
    
    # the type of statutory leave
    attr_accessor :status
    
    # The days of the work week the employee is scheduled to work at the time the leave is taken
    attr_accessor :work_pattern
    
    # Whether the sick leave was pregnancy related
    attr_accessor :is_pregnancy_related
    
    # Whether the employee provided sufficient notice and documentation as required by the employer supporting the sick leave request
    attr_accessor :sufficient_notice
    
    # Whether the leave was entitled to receive payment
    attr_accessor :is_entitled
    
    # The amount of requested time (in weeks)
    attr_accessor :entitlement_weeks_requested
    
    # The amount of statutory sick leave time off (in weeks) that is available to take at the time the leave was requested
    attr_accessor :entitlement_weeks_qualified
    
    # A calculated amount of time (in weeks) that remains for the statutory sick leave period
    attr_accessor :entitlement_weeks_remaining
    
    # Whether another leave (Paternity, Shared Parental specifically) occurs during the requested leave's period. While this is allowed it could affect payment amounts
    attr_accessor :overlaps_with_other_leave
    
    # If the leave requested was considered \"not entitled\", the reasons why are listed here.
    attr_accessor :entitlement_failure_reasons
    
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
        :'statutory_leave_id' => :'statutoryLeaveID',
        :'employee_id' => :'employeeID',
        :'leave_type_id' => :'leaveTypeID',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'type' => :'type',
        :'status' => :'status',
        :'work_pattern' => :'workPattern',
        :'is_pregnancy_related' => :'isPregnancyRelated',
        :'sufficient_notice' => :'sufficientNotice',
        :'is_entitled' => :'isEntitled',
        :'entitlement_weeks_requested' => :'entitlementWeeksRequested',
        :'entitlement_weeks_qualified' => :'entitlementWeeksQualified',
        :'entitlement_weeks_remaining' => :'entitlementWeeksRemaining',
        :'overlaps_with_other_leave' => :'overlapsWithOtherLeave',
        :'entitlement_failure_reasons' => :'entitlementFailureReasons'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'statutory_leave_id' => :'String',
        :'employee_id' => :'String',
        :'leave_type_id' => :'String',
        :'start_date' => :'Date',
        :'end_date' => :'Date',
        :'type' => :'String',
        :'status' => :'String',
        :'work_pattern' => :'Array<String>',
        :'is_pregnancy_related' => :'Boolean',
        :'sufficient_notice' => :'Boolean',
        :'is_entitled' => :'Boolean',
        :'entitlement_weeks_requested' => :'Float',
        :'entitlement_weeks_qualified' => :'Float',
        :'entitlement_weeks_remaining' => :'Float',
        :'overlaps_with_other_leave' => :'Boolean',
        :'entitlement_failure_reasons' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollUk::EmployeeStatutorySickLeave` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollUk::EmployeeStatutorySickLeave`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'statutory_leave_id')
        self.statutory_leave_id = attributes[:'statutory_leave_id']
      end

      if attributes.key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.key?(:'leave_type_id')
        self.leave_type_id = attributes[:'leave_type_id']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'work_pattern')
        if (value = attributes[:'work_pattern']).is_a?(Array)
          self.work_pattern = value
        end
      end

      if attributes.key?(:'is_pregnancy_related')
        self.is_pregnancy_related = attributes[:'is_pregnancy_related']
      end

      if attributes.key?(:'sufficient_notice')
        self.sufficient_notice = attributes[:'sufficient_notice']
      end

      if attributes.key?(:'is_entitled')
        self.is_entitled = attributes[:'is_entitled']
      end

      if attributes.key?(:'entitlement_weeks_requested')
        self.entitlement_weeks_requested = attributes[:'entitlement_weeks_requested']
      end

      if attributes.key?(:'entitlement_weeks_qualified')
        self.entitlement_weeks_qualified = attributes[:'entitlement_weeks_qualified']
      end

      if attributes.key?(:'entitlement_weeks_remaining')
        self.entitlement_weeks_remaining = attributes[:'entitlement_weeks_remaining']
      end

      if attributes.key?(:'overlaps_with_other_leave')
        self.overlaps_with_other_leave = attributes[:'overlaps_with_other_leave']
      end

      if attributes.key?(:'entitlement_failure_reasons')
        if (value = attributes[:'entitlement_failure_reasons']).is_a?(Array)
          self.entitlement_failure_reasons = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @employee_id.nil?
        invalid_properties.push('invalid value for "employee_id", employee_id cannot be nil.')
      end

      if @leave_type_id.nil?
        invalid_properties.push('invalid value for "leave_type_id", leave_type_id cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @work_pattern.nil?
        invalid_properties.push('invalid value for "work_pattern", work_pattern cannot be nil.')
      end

      if @is_pregnancy_related.nil?
        invalid_properties.push('invalid value for "is_pregnancy_related", is_pregnancy_related cannot be nil.')
      end

      if @sufficient_notice.nil?
        invalid_properties.push('invalid value for "sufficient_notice", sufficient_notice cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @employee_id.nil?
      return false if @leave_type_id.nil?
      return false if @start_date.nil?
      return false if @end_date.nil?
      return false if @work_pattern.nil?
      return false if @is_pregnancy_related.nil?
      return false if @sufficient_notice.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          statutory_leave_id == o.statutory_leave_id &&
          employee_id == o.employee_id &&
          leave_type_id == o.leave_type_id &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          type == o.type &&
          status == o.status &&
          work_pattern == o.work_pattern &&
          is_pregnancy_related == o.is_pregnancy_related &&
          sufficient_notice == o.sufficient_notice &&
          is_entitled == o.is_entitled &&
          entitlement_weeks_requested == o.entitlement_weeks_requested &&
          entitlement_weeks_qualified == o.entitlement_weeks_qualified &&
          entitlement_weeks_remaining == o.entitlement_weeks_remaining &&
          overlaps_with_other_leave == o.overlaps_with_other_leave &&
          entitlement_failure_reasons == o.entitlement_failure_reasons
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [statutory_leave_id, employee_id, leave_type_id, start_date, end_date, type, status, work_pattern, is_pregnancy_related, sufficient_notice, is_entitled, entitlement_weeks_requested, entitlement_weeks_qualified, entitlement_weeks_remaining, overlaps_with_other_leave, entitlement_failure_reasons].hash
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
