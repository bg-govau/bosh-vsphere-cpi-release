=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  class MetadataProxy
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

    # secret to access metadata server
    attr_accessor :secret

    # The CAs referenced here must be uploaded to the truststore using the API POST /api/v1/trust-management/certificates?action=import. User needs to ensure a correct CA for this metedata server is used. The REST API can not detect a wrong CA which was used to verify a different server. If the Metadata Proxy reports an ERROR or NO_BACKUP status, user can check the metadata proxy log at transport node for a possible CA issue. 
    attr_accessor :metadata_server_ca_ids

    # If none is provided, the NSX will auto-select two edge-nodes from the given edge cluster. If user provides only one edge node, there will be no HA support. 
    attr_accessor :edge_cluster_member_indexes

    # The cryptographic protocols listed here are supported by the metadata proxy. The TLSv1.1 and TLSv1.2 are supported by default. 
    attr_accessor :crypto_protocols

    # The URL in format scheme://host:port/path. Please note, the scheme supports only http and https as of now, port supports range 3000 - 9000, inclusive. 
    attr_accessor :metadata_server_url

    # id of attached logical port
    attr_accessor :attached_logical_port_id

    # Flag to enable the auto-relocation of standby Metadata Proxy in case of edge node failure. Only tier 1 and auto placed Metadata Proxy are considered for the relocation. 
    attr_accessor :enable_standby_relocation

    # edge cluster uuid
    attr_accessor :edge_cluster_id

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
        :'secret' => :'secret',
        :'metadata_server_ca_ids' => :'metadata_server_ca_ids',
        :'edge_cluster_member_indexes' => :'edge_cluster_member_indexes',
        :'crypto_protocols' => :'crypto_protocols',
        :'metadata_server_url' => :'metadata_server_url',
        :'attached_logical_port_id' => :'attached_logical_port_id',
        :'enable_standby_relocation' => :'enable_standby_relocation',
        :'edge_cluster_id' => :'edge_cluster_id'
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
        :'secret' => :'',
        :'metadata_server_ca_ids' => :'',
        :'edge_cluster_member_indexes' => :'',
        :'crypto_protocols' => :'',
        :'metadata_server_url' => :'',
        :'attached_logical_port_id' => :'',
        :'enable_standby_relocation' => :'',
        :'edge_cluster_id' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::MetadataProxy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::MetadataProxy`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'secret')
        self.secret = attributes[:'secret']
      end

      if attributes.key?(:'metadata_server_ca_ids')
        if (value = attributes[:'metadata_server_ca_ids']).is_a?(Array)
          self.metadata_server_ca_ids = value
        end
      end

      if attributes.key?(:'edge_cluster_member_indexes')
        if (value = attributes[:'edge_cluster_member_indexes']).is_a?(Array)
          self.edge_cluster_member_indexes = value
        end
      end

      if attributes.key?(:'crypto_protocols')
        if (value = attributes[:'crypto_protocols']).is_a?(Array)
          self.crypto_protocols = value
        end
      end

      if attributes.key?(:'metadata_server_url')
        self.metadata_server_url = attributes[:'metadata_server_url']
      end

      if attributes.key?(:'attached_logical_port_id')
        self.attached_logical_port_id = attributes[:'attached_logical_port_id']
      end

      if attributes.key?(:'enable_standby_relocation')
        self.enable_standby_relocation = attributes[:'enable_standby_relocation']
      else
        self.enable_standby_relocation = false
      end

      if attributes.key?(:'edge_cluster_id')
        self.edge_cluster_id = attributes[:'edge_cluster_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @metadata_server_url.nil?
        invalid_properties.push('invalid value for "metadata_server_url", metadata_server_url cannot be nil.')
      end

      if @edge_cluster_id.nil?
        invalid_properties.push('invalid value for "edge_cluster_id", edge_cluster_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @metadata_server_url.nil?
      return false if @edge_cluster_id.nil?
      true
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
          secret == o.secret &&
          metadata_server_ca_ids == o.metadata_server_ca_ids &&
          edge_cluster_member_indexes == o.edge_cluster_member_indexes &&
          crypto_protocols == o.crypto_protocols &&
          metadata_server_url == o.metadata_server_url &&
          attached_logical_port_id == o.attached_logical_port_id &&
          enable_standby_relocation == o.enable_standby_relocation &&
          edge_cluster_id == o.edge_cluster_id && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, secret, metadata_server_ca_ids, edge_cluster_member_indexes, crypto_protocols, metadata_server_url, attached_logical_port_id, enable_standby_relocation, edge_cluster_id].hash
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
