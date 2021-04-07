=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  # SSL cipher
  class LbSslCipherInfo
    # Default SSL cipher flag
    attr_accessor :is_default

    # Secure/insecure SSL cipher flag
    attr_accessor :is_secure

    # Several cipher groups might contain the same cipher suite, each cipher suite could have multiple cipher group labels. 
    attr_accessor :cipher_group_labels

    # SSL cipher
    attr_accessor :cipher

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
        :'is_default' => :'is_default',
        :'is_secure' => :'is_secure',
        :'cipher_group_labels' => :'cipher_group_labels',
        :'cipher' => :'cipher'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_default' => :'Object',
        :'is_secure' => :'Object',
        :'cipher_group_labels' => :'Object',
        :'cipher' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::LbSslCipherInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::LbSslCipherInfo`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.key?(:'is_secure')
        self.is_secure = attributes[:'is_secure']
      end

      if attributes.key?(:'cipher_group_labels')
        if (value = attributes[:'cipher_group_labels']).is_a?(Array)
          self.cipher_group_labels = value
        end
      end

      if attributes.key?(:'cipher')
        self.cipher = attributes[:'cipher']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_default.nil?
        invalid_properties.push('invalid value for "is_default", is_default cannot be nil.')
      end

      if @is_secure.nil?
        invalid_properties.push('invalid value for "is_secure", is_secure cannot be nil.')
      end

      if @cipher.nil?
        invalid_properties.push('invalid value for "cipher", cipher cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_default.nil?
      return false if @is_secure.nil?
      return false if @cipher.nil?
      cipher_validator = EnumAttributeValidator.new('Object', ['TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA256', 'TLS_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384'])
      return false unless cipher_validator.valid?(@cipher)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cipher Object to be assigned
    def cipher=(cipher)
      validator = EnumAttributeValidator.new('Object', ['TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_256_CBC_SHA', 'TLS_RSA_WITH_AES_128_CBC_SHA', 'TLS_RSA_WITH_3DES_EDE_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384', 'TLS_RSA_WITH_AES_128_CBC_SHA256', 'TLS_RSA_WITH_AES_128_GCM_SHA256', 'TLS_RSA_WITH_AES_256_CBC_SHA256', 'TLS_RSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA', 'TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256', 'TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256', 'TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384', 'TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384'])
      unless validator.valid?(cipher)
        fail ArgumentError, "invalid value for \"cipher\", must be one of #{validator.allowable_values}."
      end
      @cipher = cipher
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_default == o.is_default &&
          is_secure == o.is_secure &&
          cipher_group_labels == o.cipher_group_labels &&
          cipher == o.cipher
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_default, is_secure, cipher_group_labels, cipher].hash
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
