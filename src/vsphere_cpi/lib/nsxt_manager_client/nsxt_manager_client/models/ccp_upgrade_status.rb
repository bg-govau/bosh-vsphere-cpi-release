=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  # Status of CCP upgrade
  class CCPUpgradeStatus
    # Upgrade status of component
    attr_accessor :status

    attr_accessor :pre_upgrade_status

    # Details about the upgrade status
    attr_accessor :details

    # Component type for the upgrade status
    attr_accessor :component_type

    # Number of nodes of the type and at the component version
    attr_accessor :node_count_at_target_version

    # Target component version
    attr_accessor :target_component_version

    # Indicator of upgrade progress in percentage
    attr_accessor :percent_complete

    # Can the upgrade of the remaining units in this component be skipped
    attr_accessor :can_skip

    attr_accessor :current_version_node_summary

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
        :'status' => :'status',
        :'pre_upgrade_status' => :'pre_upgrade_status',
        :'details' => :'details',
        :'component_type' => :'component_type',
        :'node_count_at_target_version' => :'node_count_at_target_version',
        :'target_component_version' => :'target_component_version',
        :'percent_complete' => :'percent_complete',
        :'can_skip' => :'can_skip',
        :'current_version_node_summary' => :'current_version_node_summary'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'',
        :'pre_upgrade_status' => :'',
        :'details' => :'',
        :'component_type' => :'',
        :'node_count_at_target_version' => :'',
        :'target_component_version' => :'',
        :'percent_complete' => :'',
        :'can_skip' => :'',
        :'current_version_node_summary' => :''
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::CCPUpgradeStatus` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::CCPUpgradeStatus`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'pre_upgrade_status')
        self.pre_upgrade_status = attributes[:'pre_upgrade_status']
      end

      if attributes.key?(:'details')
        self.details = attributes[:'details']
      end

      if attributes.key?(:'component_type')
        self.component_type = attributes[:'component_type']
      end

      if attributes.key?(:'node_count_at_target_version')
        self.node_count_at_target_version = attributes[:'node_count_at_target_version']
      end

      if attributes.key?(:'target_component_version')
        self.target_component_version = attributes[:'target_component_version']
      end

      if attributes.key?(:'percent_complete')
        self.percent_complete = attributes[:'percent_complete']
      end

      if attributes.key?(:'can_skip')
        self.can_skip = attributes[:'can_skip']
      end

      if attributes.key?(:'current_version_node_summary')
        self.current_version_node_summary = attributes[:'current_version_node_summary']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('', ['SUCCESS', 'FAILED', 'IN_PROGRESS', 'NOT_STARTED', 'PAUSING', 'PAUSED'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('', ['SUCCESS', 'FAILED', 'IN_PROGRESS', 'NOT_STARTED', 'PAUSING', 'PAUSED'])
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
          status == o.status &&
          pre_upgrade_status == o.pre_upgrade_status &&
          details == o.details &&
          component_type == o.component_type &&
          node_count_at_target_version == o.node_count_at_target_version &&
          target_component_version == o.target_component_version &&
          percent_complete == o.percent_complete &&
          can_skip == o.can_skip &&
          current_version_node_summary == o.current_version_node_summary && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, pre_upgrade_status, details, component_type, node_count_at_target_version, target_component_version, percent_complete, can_skip, current_version_node_summary].hash
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
      super(attributes)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
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
        NSXT.const_get(type).build_from_hash(value)
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
    def to_hash
      hash = super
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
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
    end  end
end
