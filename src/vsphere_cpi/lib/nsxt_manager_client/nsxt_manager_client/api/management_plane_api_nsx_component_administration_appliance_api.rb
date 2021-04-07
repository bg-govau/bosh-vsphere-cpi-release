=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiNsxComponentAdministrationApplianceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # NodeMode
    # Currently only a switch from \"VMC_LOCAL\" to \"VMC\" is supported. Returns a new Node Mode, if the request successfuly changed it. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [NodeMode]
    def change_node_mode(body, opts = {})
      data, _status_code, _headers = change_node_mode_with_http_info(body, opts)
      data
    end

    # NodeMode
    # Currently only a switch from \&quot;VMC_LOCAL\&quot; to \&quot;VMC\&quot; is supported. Returns a new Node Mode, if the request successfuly changed it. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NodeMode, Integer, Hash)>] NodeMode data, response status code and response headers
    def change_node_mode_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationApplianceApi.change_node_mode ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiNsxComponentAdministrationApplianceApi.change_node_mode"
      end
      # resource path
      local_var_path = '/configs/node/mode'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'NodeMode' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationApplianceApi#change_node_mode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # NodeMode
    # Returns current Node Mode. 
    # @param [Hash] opts the optional parameters
    # @return [NodeMode]
    def get_node_mode(opts = {})
      data, _status_code, _headers = get_node_mode_with_http_info(opts)
      data
    end

    # NodeMode
    # Returns current Node Mode. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NodeMode, Integer, Hash)>] NodeMode data, response status code and response headers
    def get_node_mode_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationApplianceApi.get_node_mode ...'
      end
      # resource path
      local_var_path = '/node/mode'

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

      return_type = opts[:return_type] || 'NodeMode' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationApplianceApi#get_node_mode\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Set the node system time
    # Set the node system time to the given time in UTC in the RFC3339 format 'yyyy-mm-ddThh:mm:ssZ'. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def set_node_time_set_system_time(body, opts = {})
      set_node_time_set_system_time_with_http_info(body, opts)
      nil
    end

    # Set the node system time
    # Set the node system time to the given time in UTC in the RFC3339 format &#x27;yyyy-mm-ddThh:mm:ssZ&#x27;. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def set_node_time_set_system_time_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationApplianceApi.set_node_time_set_system_time ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiNsxComponentAdministrationApplianceApi.set_node_time_set_system_time"
      end
      # resource path
      local_var_path = '/node?action=set_system_time'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationApplianceApi#set_node_time_set_system_time\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
