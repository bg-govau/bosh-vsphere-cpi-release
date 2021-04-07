=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  class LbServerSslProfile
    # SSL session caching allows SSL client and server to reuse previously negotiated security parameters avoiding the expensive public key operation during handshake. 
    attr_accessor :session_cache_enabled

    # This flag is set to true when all the ciphers and protocols are FIPS compliant. It is set to false when one of the ciphers or protocols are not FIPS compliant. 
    attr_accessor :is_fips

    # It is a label of cipher group which is mostly consumed by GUI. 
    attr_accessor :cipher_group_label

    # This flag is set to true when all the ciphers and protocols are secure. It is set to false when one of the ciphers or protocols is insecure. 
    attr_accessor :is_secure

    # supported SSL cipher list to client side
    attr_accessor :ciphers

    # SSL versions TLS1.1 and TLS1.2 are supported and enabled by default. SSLv2, SSLv3, and TLS1.0 are supported, but disabled by default. 
    attr_accessor :protocols

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
        :'session_cache_enabled' => :'session_cache_enabled',
        :'is_fips' => :'is_fips',
        :'cipher_group_label' => :'cipher_group_label',
        :'is_secure' => :'is_secure',
        :'ciphers' => :'ciphers',
        :'protocols' => :'protocols'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'session_cache_enabled' => :'',
        :'is_fips' => :'',
        :'cipher_group_label' => :'',
        :'is_secure' => :'',
        :'ciphers' => :'',
        :'protocols' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::LbServerSslProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::LbServerSslProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'session_cache_enabled')
        self.session_cache_enabled = attributes[:'session_cache_enabled']
      else
        self.session_cache_enabled = true
      end

      if attributes.key?(:'is_fips')
        self.is_fips = attributes[:'is_fips']
      end

      if attributes.key?(:'cipher_group_label')
        self.cipher_group_label = attributes[:'cipher_group_label']
      end

      if attributes.key?(:'is_secure')
        self.is_secure = attributes[:'is_secure']
      end

      if attributes.key?(:'ciphers')
        if (value = attributes[:'ciphers']).is_a?(Array)
          self.ciphers = value
        end
      end

      if attributes.key?(:'protocols')
        if (value = attributes[:'protocols']).is_a?(Array)
          self.protocols = value
        end
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
      cipher_group_label_validator = EnumAttributeValidator.new('', ['BALANCED', 'HIGH_SECURITY', 'HIGH_COMPATIBILITY', 'CUSTOM'])
      return false unless cipher_group_label_validator.valid?(@cipher_group_label)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cipher_group_label Object to be assigned
    def cipher_group_label=(cipher_group_label)
      validator = EnumAttributeValidator.new('', ['BALANCED', 'HIGH_SECURITY', 'HIGH_COMPATIBILITY', 'CUSTOM'])
      unless validator.valid?(cipher_group_label)
        fail ArgumentError, "invalid value for \"cipher_group_label\", must be one of #{validator.allowable_values}."
      end
      @cipher_group_label = cipher_group_label
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          session_cache_enabled == o.session_cache_enabled &&
          is_fips == o.is_fips &&
          cipher_group_label == o.cipher_group_label &&
          is_secure == o.is_secure &&
          ciphers == o.ciphers &&
          protocols == o.protocols && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [session_cache_enabled, is_fips, cipher_group_label, is_secure, ciphers, protocols].hash
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
