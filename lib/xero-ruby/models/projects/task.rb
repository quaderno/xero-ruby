=begin
#Xero Projects API

#This is the Xero Projects API

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Projects
  require 'bigdecimal'

  class Task
    # Identifier of the task.
    attr_accessor :task_id
    
    # Name of the task.
    attr_accessor :name
    

    attr_accessor :rate
    

    attr_accessor :charge_type
    
    # An estimated time to perform the task
    attr_accessor :estimate_minutes
    
    # Identifier of the project task belongs to.
    attr_accessor :project_id
    
    # Total minutes which have been logged against the task. Logged by assigning a time entry to a task
    attr_accessor :total_minutes
    

    attr_accessor :total_amount
    
    # Minutes on this task which have been invoiced.
    attr_accessor :minutes_invoiced
    
    # Minutes on this task which have not been invoiced.
    attr_accessor :minutes_to_be_invoiced
    
    # Minutes logged against this task if its charge type is `FIXED`.
    attr_accessor :fixed_minutes
    
    # Minutes logged against this task if its charge type is `NON_CHARGEABLE`.
    attr_accessor :non_chargeable_minutes
    

    attr_accessor :amount_to_be_invoiced
    

    attr_accessor :amount_invoiced
    
    # Status of the task. When a task of ChargeType is `FIXED` and the rate amount is invoiced the status will be set to `INVOICED` and can't be modified. A task with ChargeType of `TIME` or `NON_CHARGEABLE` cannot have a status of `INVOICED`. A `LOCKED` state indicates that the task is currently changing state (for example being invoiced) and can't be modified.
    attr_accessor :status
    ACTIVE = "ACTIVE".freeze
    INVOICED = "INVOICED".freeze
    LOCKED = "LOCKED".freeze
    
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
        :'task_id' => :'taskId',
        :'name' => :'name',
        :'rate' => :'rate',
        :'charge_type' => :'chargeType',
        :'estimate_minutes' => :'estimateMinutes',
        :'project_id' => :'projectId',
        :'total_minutes' => :'totalMinutes',
        :'total_amount' => :'totalAmount',
        :'minutes_invoiced' => :'minutesInvoiced',
        :'minutes_to_be_invoiced' => :'minutesToBeInvoiced',
        :'fixed_minutes' => :'fixedMinutes',
        :'non_chargeable_minutes' => :'nonChargeableMinutes',
        :'amount_to_be_invoiced' => :'amountToBeInvoiced',
        :'amount_invoiced' => :'amountInvoiced',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'task_id' => :'String',
        :'name' => :'String',
        :'rate' => :'Amount',
        :'charge_type' => :'ChargeType',
        :'estimate_minutes' => :'Float',
        :'project_id' => :'String',
        :'total_minutes' => :'Float',
        :'total_amount' => :'Amount',
        :'minutes_invoiced' => :'Float',
        :'minutes_to_be_invoiced' => :'Float',
        :'fixed_minutes' => :'Float',
        :'non_chargeable_minutes' => :'Float',
        :'amount_to_be_invoiced' => :'Amount',
        :'amount_invoiced' => :'Amount',
        :'status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Projects::Task` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Projects::Task`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'task_id')
        self.task_id = attributes[:'task_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.key?(:'charge_type')
        self.charge_type = attributes[:'charge_type']
      end

      if attributes.key?(:'estimate_minutes')
        self.estimate_minutes = attributes[:'estimate_minutes']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'total_minutes')
        self.total_minutes = attributes[:'total_minutes']
      end

      if attributes.key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.key?(:'minutes_invoiced')
        self.minutes_invoiced = attributes[:'minutes_invoiced']
      end

      if attributes.key?(:'minutes_to_be_invoiced')
        self.minutes_to_be_invoiced = attributes[:'minutes_to_be_invoiced']
      end

      if attributes.key?(:'fixed_minutes')
        self.fixed_minutes = attributes[:'fixed_minutes']
      end

      if attributes.key?(:'non_chargeable_minutes')
        self.non_chargeable_minutes = attributes[:'non_chargeable_minutes']
      end

      if attributes.key?(:'amount_to_be_invoiced')
        self.amount_to_be_invoiced = attributes[:'amount_to_be_invoiced']
      end

      if attributes.key?(:'amount_invoiced')
        self.amount_invoiced = attributes[:'amount_invoiced']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "INVOICED", "LOCKED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "INVOICED", "LOCKED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          task_id == o.task_id &&
          name == o.name &&
          rate == o.rate &&
          charge_type == o.charge_type &&
          estimate_minutes == o.estimate_minutes &&
          project_id == o.project_id &&
          total_minutes == o.total_minutes &&
          total_amount == o.total_amount &&
          minutes_invoiced == o.minutes_invoiced &&
          minutes_to_be_invoiced == o.minutes_to_be_invoiced &&
          fixed_minutes == o.fixed_minutes &&
          non_chargeable_minutes == o.non_chargeable_minutes &&
          amount_to_be_invoiced == o.amount_to_be_invoiced &&
          amount_invoiced == o.amount_invoiced &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [task_id, name, rate, charge_type, estimate_minutes, project_id, total_minutes, total_amount, minutes_invoiced, minutes_to_be_invoiced, fixed_minutes, non_chargeable_minutes, amount_to_be_invoiced, amount_invoiced, status].hash
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
        XeroRuby::Projects.const_get(type).build_from_hash(value)
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
        hash[key] = _to_hash(value)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
        Time.at(seconds_since_epoch).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
