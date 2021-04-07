=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  class VirtualNetworkInterface
    # Timestamp of last modification
    attr_accessor :_last_sync_time

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # The type of this resource.
    attr_accessor :resource_type

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # MAC address of the virtual network interface.
    attr_accessor :mac_address

    # Owner virtual machine type; Edge, Service VM or other.
    attr_accessor :owner_vm_type

    # Device key of the virtual network interface.
    attr_accessor :device_key

    # Id of the host on which the vm exists.
    attr_accessor :host_id

    # Id of the vm to which this virtual network interface belongs.
    attr_accessor :owner_vm_id

    # Id of the vm unique within the host.
    attr_accessor :vm_local_id_on_host

    # External Id of the virtual network inferface.
    attr_accessor :external_id

    # LPort Attachment Id of the virtual network interface.
    attr_accessor :lport_attachment_id

    # IP Addresses of the the virtual network interface, from various sources.
    attr_accessor :ip_address_info

    # Device name of the virtual network interface.
    attr_accessor :device_name

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
        :'_last_sync_time' => :'_last_sync_time',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'resource_type' => :'resource_type',
        :'tags' => :'tags',
        :'mac_address' => :'mac_address',
        :'owner_vm_type' => :'owner_vm_type',
        :'device_key' => :'device_key',
        :'host_id' => :'host_id',
        :'owner_vm_id' => :'owner_vm_id',
        :'vm_local_id_on_host' => :'vm_local_id_on_host',
        :'external_id' => :'external_id',
        :'lport_attachment_id' => :'lport_attachment_id',
        :'ip_address_info' => :'ip_address_info',
        :'device_name' => :'device_name'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_last_sync_time' => :'',
        :'display_name' => :'',
        :'description' => :'',
        :'resource_type' => :'',
        :'tags' => :'',
        :'mac_address' => :'',
        :'owner_vm_type' => :'',
        :'device_key' => :'',
        :'host_id' => :'',
        :'owner_vm_id' => :'',
        :'vm_local_id_on_host' => :'',
        :'external_id' => :'',
        :'lport_attachment_id' => :'',
        :'ip_address_info' => :'',
        :'device_name' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::VirtualNetworkInterface` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::VirtualNetworkInterface`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'_last_sync_time')
        self._last_sync_time = attributes[:'_last_sync_time']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'mac_address')
        self.mac_address = attributes[:'mac_address']
      end

      if attributes.key?(:'owner_vm_type')
        self.owner_vm_type = attributes[:'owner_vm_type']
      end

      if attributes.key?(:'device_key')
        self.device_key = attributes[:'device_key']
      end

      if attributes.key?(:'host_id')
        self.host_id = attributes[:'host_id']
      end

      if attributes.key?(:'owner_vm_id')
        self.owner_vm_id = attributes[:'owner_vm_id']
      end

      if attributes.key?(:'vm_local_id_on_host')
        self.vm_local_id_on_host = attributes[:'vm_local_id_on_host']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'lport_attachment_id')
        self.lport_attachment_id = attributes[:'lport_attachment_id']
      end

      if attributes.key?(:'ip_address_info')
        if (value = attributes[:'ip_address_info']).is_a?(Array)
          self.ip_address_info = value
        end
      end

      if attributes.key?(:'device_name')
        self.device_name = attributes[:'device_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      if @mac_address.nil?
        invalid_properties.push('invalid value for "mac_address", mac_address cannot be nil.')
      end

      if @device_key.nil?
        invalid_properties.push('invalid value for "device_key", device_key cannot be nil.')
      end

      if @host_id.nil?
        invalid_properties.push('invalid value for "host_id", host_id cannot be nil.')
      end

      if @owner_vm_id.nil?
        invalid_properties.push('invalid value for "owner_vm_id", owner_vm_id cannot be nil.')
      end

      if @vm_local_id_on_host.nil?
        invalid_properties.push('invalid value for "vm_local_id_on_host", vm_local_id_on_host cannot be nil.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @resource_type.nil?
      return false if @mac_address.nil?
      owner_vm_type_validator = EnumAttributeValidator.new('', ['EDGE', 'SERVICE', 'REGULAR'])
      return false unless owner_vm_type_validator.valid?(@owner_vm_type)
      return false if @device_key.nil?
      return false if @host_id.nil?
      return false if @owner_vm_id.nil?
      return false if @vm_local_id_on_host.nil?
      return false if @external_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] owner_vm_type Object to be assigned
    def owner_vm_type=(owner_vm_type)
      validator = EnumAttributeValidator.new('', ['EDGE', 'SERVICE', 'REGULAR'])
      unless validator.valid?(owner_vm_type)
        fail ArgumentError, "invalid value for \"owner_vm_type\", must be one of #{validator.allowable_values}."
      end
      @owner_vm_type = owner_vm_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _last_sync_time == o._last_sync_time &&
          display_name == o.display_name &&
          description == o.description &&
          resource_type == o.resource_type &&
          tags == o.tags &&
          mac_address == o.mac_address &&
          owner_vm_type == o.owner_vm_type &&
          device_key == o.device_key &&
          host_id == o.host_id &&
          owner_vm_id == o.owner_vm_id &&
          vm_local_id_on_host == o.vm_local_id_on_host &&
          external_id == o.external_id &&
          lport_attachment_id == o.lport_attachment_id &&
          ip_address_info == o.ip_address_info &&
          device_name == o.device_name && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_last_sync_time, display_name, description, resource_type, tags, mac_address, owner_vm_type, device_key, host_id, owner_vm_id, vm_local_id_on_host, external_id, lport_attachment_id, ip_address_info, device_name].hash
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
