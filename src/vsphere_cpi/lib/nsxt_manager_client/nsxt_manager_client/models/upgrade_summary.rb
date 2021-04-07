=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  class UpgradeSummary
    # Has upgrade coordinator been updated after upload of upgrade bundle file
    attr_accessor :upgrade_coordinator_updated

    # Target system version
    attr_accessor :target_version

    # Current version of upgrade coordinator
    attr_accessor :upgrade_coordinator_version

    # Status of upgrade
    attr_accessor :upgrade_status

    attr_accessor :component_target_versions

    # Current system version
    attr_accessor :system_version

    # Name of the last successfully uploaded upgrade bundle file
    attr_accessor :upgrade_bundle_file_name

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
        :'upgrade_coordinator_updated' => :'upgrade_coordinator_updated',
        :'target_version' => :'target_version',
        :'upgrade_coordinator_version' => :'upgrade_coordinator_version',
        :'upgrade_status' => :'upgrade_status',
        :'component_target_versions' => :'component_target_versions',
        :'system_version' => :'system_version',
        :'upgrade_bundle_file_name' => :'upgrade_bundle_file_name'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'upgrade_coordinator_updated' => :'Object',
        :'target_version' => :'Object',
        :'upgrade_coordinator_version' => :'Object',
        :'upgrade_status' => :'Object',
        :'component_target_versions' => :'Object',
        :'system_version' => :'Object',
        :'upgrade_bundle_file_name' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::UpgradeSummary` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::UpgradeSummary`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'upgrade_coordinator_updated')
        self.upgrade_coordinator_updated = attributes[:'upgrade_coordinator_updated']
      end

      if attributes.key?(:'target_version')
        self.target_version = attributes[:'target_version']
      end

      if attributes.key?(:'upgrade_coordinator_version')
        self.upgrade_coordinator_version = attributes[:'upgrade_coordinator_version']
      end

      if attributes.key?(:'upgrade_status')
        self.upgrade_status = attributes[:'upgrade_status']
      end

      if attributes.key?(:'component_target_versions')
        if (value = attributes[:'component_target_versions']).is_a?(Array)
          self.component_target_versions = value
        end
      end

      if attributes.key?(:'system_version')
        self.system_version = attributes[:'system_version']
      end

      if attributes.key?(:'upgrade_bundle_file_name')
        self.upgrade_bundle_file_name = attributes[:'upgrade_bundle_file_name']
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
      upgrade_status_validator = EnumAttributeValidator.new('Object', ['SUCCESS', 'FAILED', 'IN_PROGRESS', 'NOT_STARTED', 'PAUSING', 'PAUSED'])
      return false unless upgrade_status_validator.valid?(@upgrade_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] upgrade_status Object to be assigned
    def upgrade_status=(upgrade_status)
      validator = EnumAttributeValidator.new('Object', ['SUCCESS', 'FAILED', 'IN_PROGRESS', 'NOT_STARTED', 'PAUSING', 'PAUSED'])
      unless validator.valid?(upgrade_status)
        fail ArgumentError, "invalid value for \"upgrade_status\", must be one of #{validator.allowable_values}."
      end
      @upgrade_status = upgrade_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          upgrade_coordinator_updated == o.upgrade_coordinator_updated &&
          target_version == o.target_version &&
          upgrade_coordinator_version == o.upgrade_coordinator_version &&
          upgrade_status == o.upgrade_status &&
          component_target_versions == o.component_target_versions &&
          system_version == o.system_version &&
          upgrade_bundle_file_name == o.upgrade_bundle_file_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [upgrade_coordinator_updated, target_version, upgrade_coordinator_version, upgrade_status, component_target_versions, system_version, upgrade_bundle_file_name].hash
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
      hash = {}
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
