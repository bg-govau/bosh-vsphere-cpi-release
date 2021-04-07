=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  class DSRule
    attr_accessor :_owner

    # Defaults to ID if not set
    attr_accessor :display_name

    # Identifier of the resource
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # Description of this resource
    attr_accessor :description

    # Flag to indicate whether rule is default.
    attr_accessor :is_default

    # Rule direction in case of stateless distributed service rules. This will only considered if section level parameter is set to stateless. Default to IN_OUT if not specified.
    attr_accessor :direction

    # User level field which will be printed in CLI and packet logs.
    attr_accessor :rule_tag

    # Type of IP packet that should be matched while enforcing the rule.
    attr_accessor :ip_protocol

    # User notes specific to the rule.
    attr_accessor :notes

    # List of object where rule will be enforced. The section level field overrides this one. Null will be treated as any.
    attr_accessor :applied_tos

    # Flag to enable packet logging. Default is disabled.
    attr_accessor :logged

    # Flag to disable rule. Disabled will only be persisted but never provisioned/realized.
    attr_accessor :disabled

    # List of sources. Null will be treated as any.
    attr_accessor :sources

    # Action enforced on the packets which matches the distributed service rule. Currently DS Layer supports below actions. ALLOW           - Forward any packet when a rule with this action gets a match (Used by Firewall). DROP            - Drop any packet when a rule with this action gets a match. Packets won't go further(Used by Firewall). REJECT          - Terminate TCP connection by sending TCP reset for a packet when a rule with this action gets a match (Used by Firewall). REDIRECT        - Redirect any packet to a partner appliance when a rule with this action gets a match (Used by Service Insertion). DO_NOT_REDIRECT - Do not redirect any packet to a partner appliance when a rule with this action gets a match (Used by Service Insertion).
    attr_accessor :action

    # Priority of the rule.
    attr_accessor :priority

    # Negation of the source.
    attr_accessor :sources_excluded

    # Negation of the destination.
    attr_accessor :destinations_excluded

    # List of the destinations. Null will be treated as any.
    attr_accessor :destinations

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
        :'_owner' => :'_owner',
        :'display_name' => :'display_name',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'description' => :'description',
        :'is_default' => :'is_default',
        :'direction' => :'direction',
        :'rule_tag' => :'rule_tag',
        :'ip_protocol' => :'ip_protocol',
        :'notes' => :'notes',
        :'applied_tos' => :'applied_tos',
        :'logged' => :'logged',
        :'disabled' => :'disabled',
        :'sources' => :'sources',
        :'action' => :'action',
        :'priority' => :'priority',
        :'sources_excluded' => :'sources_excluded',
        :'destinations_excluded' => :'destinations_excluded',
        :'destinations' => :'destinations'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_owner' => :'',
        :'display_name' => :'',
        :'id' => :'',
        :'resource_type' => :'',
        :'description' => :'',
        :'is_default' => :'',
        :'direction' => :'',
        :'rule_tag' => :'',
        :'ip_protocol' => :'',
        :'notes' => :'',
        :'applied_tos' => :'',
        :'logged' => :'',
        :'disabled' => :'',
        :'sources' => :'',
        :'action' => :'',
        :'priority' => :'',
        :'sources_excluded' => :'',
        :'destinations_excluded' => :'',
        :'destinations' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::DSRule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::DSRule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'_owner')
        self._owner = attributes[:'_owner']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      else
        self.direction = 'IN_OUT'
      end

      if attributes.key?(:'rule_tag')
        self.rule_tag = attributes[:'rule_tag']
      end

      if attributes.key?(:'ip_protocol')
        self.ip_protocol = attributes[:'ip_protocol']
      else
        self.ip_protocol = 'IPV4_IPV6'
      end

      if attributes.key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.key?(:'applied_tos')
        if (value = attributes[:'applied_tos']).is_a?(Array)
          self.applied_tos = value
        end
      end

      if attributes.key?(:'logged')
        self.logged = attributes[:'logged']
      else
        self.logged = false
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      else
        self.disabled = false
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      end

      if attributes.key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'sources_excluded')
        self.sources_excluded = attributes[:'sources_excluded']
      else
        self.sources_excluded = false
      end

      if attributes.key?(:'destinations_excluded')
        self.destinations_excluded = attributes[:'destinations_excluded']
      else
        self.destinations_excluded = false
      end

      if attributes.key?(:'destinations')
        if (value = attributes[:'destinations']).is_a?(Array)
          self.destinations = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @action.nil?
        invalid_properties.push('invalid value for "action", action cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      direction_validator = EnumAttributeValidator.new('', ['IN', 'OUT', 'IN_OUT'])
      return false unless direction_validator.valid?(@direction)
      ip_protocol_validator = EnumAttributeValidator.new('', ['IPV4', 'IPV6', 'IPV4_IPV6'])
      return false unless ip_protocol_validator.valid?(@ip_protocol)
      return false if @action.nil?
      action_validator = EnumAttributeValidator.new('', ['ALLOW', 'DROP', 'REJECT', 'REDIRECT', 'DO_NOT_REDIRECT'])
      return false unless action_validator.valid?(@action)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('', ['IN', 'OUT', 'IN_OUT'])
      unless validator.valid?(direction)
        fail ArgumentError, "invalid value for \"direction\", must be one of #{validator.allowable_values}."
      end
      @direction = direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_protocol Object to be assigned
    def ip_protocol=(ip_protocol)
      validator = EnumAttributeValidator.new('', ['IPV4', 'IPV6', 'IPV4_IPV6'])
      unless validator.valid?(ip_protocol)
        fail ArgumentError, "invalid value for \"ip_protocol\", must be one of #{validator.allowable_values}."
      end
      @ip_protocol = ip_protocol
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('', ['ALLOW', 'DROP', 'REJECT', 'REDIRECT', 'DO_NOT_REDIRECT'])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for \"action\", must be one of #{validator.allowable_values}."
      end
      @action = action
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _owner == o._owner &&
          display_name == o.display_name &&
          id == o.id &&
          resource_type == o.resource_type &&
          description == o.description &&
          is_default == o.is_default &&
          direction == o.direction &&
          rule_tag == o.rule_tag &&
          ip_protocol == o.ip_protocol &&
          notes == o.notes &&
          applied_tos == o.applied_tos &&
          logged == o.logged &&
          disabled == o.disabled &&
          sources == o.sources &&
          action == o.action &&
          priority == o.priority &&
          sources_excluded == o.sources_excluded &&
          destinations_excluded == o.destinations_excluded &&
          destinations == o.destinations && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_owner, display_name, id, resource_type, description, is_default, direction, rule_tag, ip_protocol, notes, applied_tos, logged, disabled, sources, action, priority, sources_excluded, destinations_excluded, destinations].hash
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
