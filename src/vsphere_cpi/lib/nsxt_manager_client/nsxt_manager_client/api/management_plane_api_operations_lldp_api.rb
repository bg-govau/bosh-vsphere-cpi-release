=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiOperationsLldpApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List LLDP Neighbor Properties of Fabric Node
    # List LLDP Neighbor Properties for all interfaces of Fabric Node 
    # @param fabric_node_id ID of fabric node
    # @param [Hash] opts the optional parameters
    # @return [InterfaceNeighborPropertyListResult]
    def list_fabric_node_neighbor_properties(fabric_node_id, opts = {})
      data, _status_code, _headers = list_fabric_node_neighbor_properties_with_http_info(fabric_node_id, opts)
      data
    end

    # List LLDP Neighbor Properties of Fabric Node
    # List LLDP Neighbor Properties for all interfaces of Fabric Node 
    # @param fabric_node_id ID of fabric node
    # @param [Hash] opts the optional parameters
    # @return [Array<(InterfaceNeighborPropertyListResult, Integer, Hash)>] InterfaceNeighborPropertyListResult data, response status code and response headers
    def list_fabric_node_neighbor_properties_with_http_info(fabric_node_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiOperationsLldpApi.list_fabric_node_neighbor_properties ...'
      end
      # verify the required parameter 'fabric_node_id' is set
      if @api_client.config.client_side_validation && fabric_node_id.nil?
        fail ArgumentError, "Missing the required parameter 'fabric_node_id' when calling ManagementPlaneApiOperationsLldpApi.list_fabric_node_neighbor_properties"
      end
      # resource path
      local_var_path = '/lldp/fabric-nodes/{fabric-node-id}/interfaces'.sub('{' + 'fabric-node-id' + '}', fabric_node_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InterfaceNeighborPropertyListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiOperationsLldpApi#list_fabric_node_neighbor_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read LLDP Neighbor Properties of Fabric Node by Interface Name
    # Read LLDP Neighbor Properties for a specific interface of Fabric Node 
    # @param fabric_node_id ID of fabric node
    # @param interface_name Interface name to read
    # @param [Hash] opts the optional parameters
    # @return [InterfaceNeighborProperties]
    def read_fabric_node_neighbor_properties(fabric_node_id, interface_name, opts = {})
      data, _status_code, _headers = read_fabric_node_neighbor_properties_with_http_info(fabric_node_id, interface_name, opts)
      data
    end

    # Read LLDP Neighbor Properties of Fabric Node by Interface Name
    # Read LLDP Neighbor Properties for a specific interface of Fabric Node 
    # @param fabric_node_id ID of fabric node
    # @param interface_name Interface name to read
    # @param [Hash] opts the optional parameters
    # @return [Array<(InterfaceNeighborProperties, Integer, Hash)>] InterfaceNeighborProperties data, response status code and response headers
    def read_fabric_node_neighbor_properties_with_http_info(fabric_node_id, interface_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiOperationsLldpApi.read_fabric_node_neighbor_properties ...'
      end
      # verify the required parameter 'fabric_node_id' is set
      if @api_client.config.client_side_validation && fabric_node_id.nil?
        fail ArgumentError, "Missing the required parameter 'fabric_node_id' when calling ManagementPlaneApiOperationsLldpApi.read_fabric_node_neighbor_properties"
      end
      # verify the required parameter 'interface_name' is set
      if @api_client.config.client_side_validation && interface_name.nil?
        fail ArgumentError, "Missing the required parameter 'interface_name' when calling ManagementPlaneApiOperationsLldpApi.read_fabric_node_neighbor_properties"
      end
      # resource path
      local_var_path = '/lldp/fabric-nodes/{fabric-node-id}/interfaces/{interface-name}'.sub('{' + 'fabric-node-id' + '}', fabric_node_id.to_s).sub('{' + 'interface-name' + '}', interface_name.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InterfaceNeighborProperties' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiOperationsLldpApi#read_fabric_node_neighbor_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
