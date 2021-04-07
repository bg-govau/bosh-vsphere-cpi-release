=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

require 'date'

module NSXT
  # Represents a container to group widgets that belong to a common category or have a common purpose.
  class ContainerConfiguration
    # Supported visualization types are LabelValueConfiguration, DonutConfiguration, GridConfiguration, StatsConfiguration, MultiWidgetConfiguration, GraphConfiguration and ContainerConfiguration.
    attr_accessor :resource_type

    # Title of the widget. If display_name is omitted, the widget will be shown without a title.
    attr_accessor :display_name

    # The 'datasources' represent the sources from which data will be fetched. Currently, only NSX-API is supported as a 'default' datasource. An example of specifying 'default' datasource along with the urls to fetch data from is given at 'example_request' section of 'CreateWidgetConfiguration' API.
    attr_accessor :datasources

    # Specify relavite weight in WidgetItem for placement in a view. Please see WidgetItem for details.
    attr_accessor :weight

    # Icons to be applied at dashboard for widgets and UI elements.
    attr_accessor :icons

    # Please use the property 'shared' of View instead of this. The widgets of a shared view are visible to other users.
    attr_accessor :shared

    attr_accessor :footer

    # Id of drilldown widget, if any. Id should be a valid id of an existing widget. A widget is considered as drilldown widget when it is associated with any other widget and provides more detailed information about any data item from the parent widget.
    attr_accessor :drilldown_id

    # Set to true if this widget should be used as a drilldown.
    attr_accessor :is_drilldown

    attr_accessor :legend

    # If not specified, creates an empty container.
    attr_accessor :widgets

    # Hyperlink of the specified UI page that provides details.
    attr_accessor :navigation

    # Labels for the container.
    attr_accessor :labels

    # Represents the horizontal span of the container.
    attr_accessor :span

    attr_accessor :layout

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
        :'resource_type' => :'resource_type',
        :'display_name' => :'display_name',
        :'datasources' => :'datasources',
        :'weight' => :'weight',
        :'icons' => :'icons',
        :'shared' => :'shared',
        :'footer' => :'footer',
        :'drilldown_id' => :'drilldown_id',
        :'is_drilldown' => :'is_drilldown',
        :'legend' => :'legend',
        :'widgets' => :'widgets',
        :'navigation' => :'navigation',
        :'labels' => :'labels',
        :'span' => :'span',
        :'layout' => :'layout'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'resource_type' => :'',
        :'display_name' => :'',
        :'datasources' => :'',
        :'weight' => :'',
        :'icons' => :'',
        :'shared' => :'',
        :'footer' => :'',
        :'drilldown_id' => :'',
        :'is_drilldown' => :'',
        :'legend' => :'',
        :'widgets' => :'',
        :'navigation' => :'',
        :'labels' => :'',
        :'span' => :'',
        :'layout' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `NSXT::ContainerConfiguration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NSXT::ContainerConfiguration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'datasources')
        if (value = attributes[:'datasources']).is_a?(Array)
          self.datasources = value
        end
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.key?(:'icons')
        if (value = attributes[:'icons']).is_a?(Array)
          self.icons = value
        end
      end

      if attributes.key?(:'shared')
        self.shared = attributes[:'shared']
      end

      if attributes.key?(:'footer')
        self.footer = attributes[:'footer']
      end

      if attributes.key?(:'drilldown_id')
        self.drilldown_id = attributes[:'drilldown_id']
      end

      if attributes.key?(:'is_drilldown')
        self.is_drilldown = attributes[:'is_drilldown']
      else
        self.is_drilldown = false
      end

      if attributes.key?(:'legend')
        self.legend = attributes[:'legend']
      end

      if attributes.key?(:'widgets')
        if (value = attributes[:'widgets']).is_a?(Array)
          self.widgets = value
        end
      end

      if attributes.key?(:'navigation')
        self.navigation = attributes[:'navigation']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'span')
        self.span = attributes[:'span']
      else
        self.span = 2
      end

      if attributes.key?(:'layout')
        self.layout = attributes[:'layout']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('', ['LabelValueConfiguration', 'DonutConfiguration', 'MultiWidgetConfiguration', 'ContainerConfiguration', 'StatsConfiguration', 'GridConfiguration', 'GraphConfiguration'])
      return false unless resource_type_validator.valid?(@resource_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('', ['LabelValueConfiguration', 'DonutConfiguration', 'MultiWidgetConfiguration', 'ContainerConfiguration', 'StatsConfiguration', 'GridConfiguration', 'GraphConfiguration'])
      unless validator.valid?(resource_type)
        fail ArgumentError, "invalid value for \"resource_type\", must be one of #{validator.allowable_values}."
      end
      @resource_type = resource_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          resource_type == o.resource_type &&
          display_name == o.display_name &&
          datasources == o.datasources &&
          weight == o.weight &&
          icons == o.icons &&
          shared == o.shared &&
          footer == o.footer &&
          drilldown_id == o.drilldown_id &&
          is_drilldown == o.is_drilldown &&
          legend == o.legend &&
          widgets == o.widgets &&
          navigation == o.navigation &&
          labels == o.labels &&
          span == o.span &&
          layout == o.layout && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [resource_type, display_name, datasources, weight, icons, shared, footer, drilldown_id, is_drilldown, legend, widgets, navigation, labels, span, layout].hash
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
