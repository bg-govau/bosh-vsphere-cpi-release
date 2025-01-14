=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiApiServicesAuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Read node authentication policy configuration
    # Returns information about the currently configured authentication policies on the node. 
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationPolicyProperties]
    def read_authentication_policy_properties(opts = {})
      data, _status_code, _headers = read_authentication_policy_properties_with_http_info(opts)
      data
    end

    # Read node authentication policy configuration
    # Returns information about the currently configured authentication policies on the node. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationPolicyProperties, Fixnum, Hash)>] AuthenticationPolicyProperties data, response status code and response headers
    def read_authentication_policy_properties_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiApiServicesAuthenticationApi.read_authentication_policy_properties ...'
      end
      # resource path
      local_var_path = '/node/aaa/auth-policy'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthenticationPolicyProperties')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiApiServicesAuthenticationApi#read_authentication_policy_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update node authentication policy configuration
    # Update the currently configured authentication policy on the node. If any of api_max_auth_failures, api_failed_auth_reset_period, or api_failed_auth_lockout_period are modified, the http service is automatically restarted. 
    # @param authentication_policy_properties 
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationPolicyProperties]
    def update_authentication_policy_properties(authentication_policy_properties, opts = {})
      data, _status_code, _headers = update_authentication_policy_properties_with_http_info(authentication_policy_properties, opts)
      data
    end

    # Update node authentication policy configuration
    # Update the currently configured authentication policy on the node. If any of api_max_auth_failures, api_failed_auth_reset_period, or api_failed_auth_lockout_period are modified, the http service is automatically restarted. 
    # @param authentication_policy_properties 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationPolicyProperties, Fixnum, Hash)>] AuthenticationPolicyProperties data, response status code and response headers
    def update_authentication_policy_properties_with_http_info(authentication_policy_properties, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiApiServicesAuthenticationApi.update_authentication_policy_properties ...'
      end
      # verify the required parameter 'authentication_policy_properties' is set
      if @api_client.config.client_side_validation && authentication_policy_properties.nil?
        fail ArgumentError, "Missing the required parameter 'authentication_policy_properties' when calling ManagementPlaneApiApiServicesAuthenticationApi.update_authentication_policy_properties"
      end
      # resource path
      local_var_path = '/node/aaa/auth-policy'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(authentication_policy_properties)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthenticationPolicyProperties')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiApiServicesAuthenticationApi#update_authentication_policy_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
