=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiProxyConfigurationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the proxy configuration
    # Returns the proxy configuration.
    # @param [Hash] opts the optional parameters
    # @return [Proxy]
    def get_proxy_config(opts = {})
      data, _status_code, _headers = get_proxy_config_with_http_info(opts)
      data
    end

    # Returns the proxy configuration
    # Returns the proxy configuration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Proxy, Integer, Hash)>] Proxy data, response status code and response headers
    def get_proxy_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiProxyConfigurationApi.get_proxy_config ...'
      end
      # resource path
      local_var_path = '/proxy/config'

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

      return_type = opts[:return_type] || 'Proxy' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiProxyConfigurationApi#get_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Creates or updates the proxy configuration
    # Updates or creates the proxy configuration, and returns the new configuration. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Proxy]
    def update_proxy_config(body, opts = {})
      data, _status_code, _headers = update_proxy_config_with_http_info(body, opts)
      data
    end

    # Creates or updates the proxy configuration
    # Updates or creates the proxy configuration, and returns the new configuration. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Proxy, Integer, Hash)>] Proxy data, response status code and response headers
    def update_proxy_config_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiProxyConfigurationApi.update_proxy_config ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiProxyConfigurationApi.update_proxy_config"
      end
      # resource path
      local_var_path = '/proxy/config'

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

      return_type = opts[:return_type] || 'Proxy' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiProxyConfigurationApi#update_proxy_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
