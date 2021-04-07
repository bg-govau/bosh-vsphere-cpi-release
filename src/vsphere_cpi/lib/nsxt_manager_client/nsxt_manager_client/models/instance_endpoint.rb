=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  # An InstanceEndpoint belongs to one ServiceInstance and represents a redirection target for a Rule. For Example - It can be an L3 Destination. Service Attachments is required for a InstanceEndpoint of type LOGICAL, and deployed_to if its a VIRTUAL InstanceEndpoint.
  class InstanceEndpoint
    # Indicates system owned resource
    attr_accessor :_system_owned

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Timestamp of resource creation
    attr_accessor :_create_time

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Unique identifier of this resource
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # Id(s) of the Service Attachment where this enndpoint is connected to. Service Attachment is mandatory for LOGICAL Instance Endpoint.
    attr_accessor :service_attachments

    # Target IPs on an interface of the Service Instance.
    attr_accessor :target_ips

    # LOGICAL - It must be created with a ServiceAttachment and identifies a destination connected to the Service Port of the ServiceAttachment, through the ServiceAttachment's Logical Switch. VIRTUAL - It represents a L3 destination the router can route to but does not provide any further information about its location in the network. Virtual InstanceEndpoints are used for redirection targets that are not connected to Service Ports, such as the next-hop routers on the Edge uplinks.
    attr_accessor :endpoint_type

    # The Service instancee with which the instance endpoint is associated.
    attr_accessor :service_instance_id

    # Link Ids are mandatory for VIRTUAL Instance Endpoint. Even though VIRTUAL, the Instance Endpoint should be connected/accessible through an NSX object. The link id is this NSX object id. Example - For North-South Service Insertion, this is the LogicalRouter Id through which the targetIp/L3 destination accessible.
    attr_accessor :link_ids

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
        :'_system_owned' => :'_system_owned',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'_create_user' => :'_create_user',
        :'_protection' => :'_protection',
        :'_create_time' => :'_create_time',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'service_attachments' => :'service_attachments',
        :'target_ips' => :'target_ips',
        :'endpoint_type' => :'endpoint_type',
        :'service_instance_id' => :'service_instance_id',
        :'link_ids' => :'link_ids'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'_system_owned' => :'',
        :'display_name' => :'',
        :'description' => :'',
        :'tags' => :'',
        :'_create_user' => :'',
        :'_protection' => :'',
        :'_create_time' => :'',
        :'_last_modified_time' => :'',
        :'_last_modified_user' => :'',
        :'id' => :'',
        :'resource_type' => :'',
        :'service_attachments' => :'',
        :'target_ips' => :'',
        :'endpoint_type' => :'',
        :'service_instance_id' => :'',
        :'link_ids' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::InstanceEndpoint` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::InstanceEndpoint`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'service_attachments')
        if (value = attributes[:'service_attachments']).is_a?(Array)
          self.service_attachments = value
        end
      end

      if attributes.key?(:'target_ips')
        if (value = attributes[:'target_ips']).is_a?(Array)
          self.target_ips = value
        end
      end

      if attributes.key?(:'endpoint_type')
        self.endpoint_type = attributes[:'endpoint_type']
      else
        self.endpoint_type = 'LOGICAL'
      end

      if attributes.key?(:'service_instance_id')
        self.service_instance_id = attributes[:'service_instance_id']
      end

      if attributes.key?(:'link_ids')
        if (value = attributes[:'link_ids']).is_a?(Array)
          self.link_ids = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @target_ips.nil?
        invalid_properties.push('invalid value for "target_ips", target_ips cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @target_ips.nil?
      endpoint_type_validator = EnumAttributeValidator.new('', ['LOGICAL', 'VIRTUAL'])
      return false unless endpoint_type_validator.valid?(@endpoint_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] endpoint_type Object to be assigned
    def endpoint_type=(endpoint_type)
      validator = EnumAttributeValidator.new('', ['LOGICAL', 'VIRTUAL'])
      unless validator.valid?(endpoint_type)
        fail ArgumentError, "invalid value for \"endpoint_type\", must be one of #{validator.allowable_values}."
      end
      @endpoint_type = endpoint_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _system_owned == o._system_owned &&
          display_name == o.display_name &&
          description == o.description &&
          tags == o.tags &&
          _create_user == o._create_user &&
          _protection == o._protection &&
          _create_time == o._create_time &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          id == o.id &&
          resource_type == o.resource_type &&
          service_attachments == o.service_attachments &&
          target_ips == o.target_ips &&
          endpoint_type == o.endpoint_type &&
          service_instance_id == o.service_instance_id &&
          link_ids == o.link_ids && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, service_attachments, target_ips, endpoint_type, service_instance_id, link_ids].hash
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
