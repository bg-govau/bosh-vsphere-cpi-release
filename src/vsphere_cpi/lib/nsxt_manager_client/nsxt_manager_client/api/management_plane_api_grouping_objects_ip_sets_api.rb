=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiGroupingObjectsIpSetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a IP address to a IPSet
    # Add/Remove an individual IP address to an IPSet 
    # @param body 
    # @param action Specifies addition or removal action
    # @param ip_set_id IP Set Id
    # @param [Hash] opts the optional parameters
    # @return [IPAddressElement]
    def add_remove_ip_address(body, action, ip_set_id, opts = {})
      data, _status_code, _headers = add_remove_ip_address_with_http_info(body, action, ip_set_id, opts)
      data
    end

    # Add a IP address to a IPSet
    # Add/Remove an individual IP address to an IPSet 
    # @param body 
    # @param action Specifies addition or removal action
    # @param ip_set_id IP Set Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPAddressElement, Integer, Hash)>] IPAddressElement data, response status code and response headers
    def add_remove_ip_address_with_http_info(body, action, ip_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsIpSetsApi.add_remove_ip_address ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.add_remove_ip_address"
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.add_remove_ip_address"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['add_ip', 'remove_ip'].include?(action)
        fail ArgumentError, "invalid value for 'action', must be one of add_ip, remove_ip"
      end
      # verify the required parameter 'ip_set_id' is set
      if @api_client.config.client_side_validation && ip_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'ip_set_id' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.add_remove_ip_address"
      end
      # resource path
      local_var_path = '/ip-sets/{ip-set-id}'.sub('{' + 'ip-set-id' + '}', ip_set_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'action'] = action

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

      return_type = opts[:return_type] || 'IPAddressElement' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsIpSetsApi#add_remove_ip_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create IPSet
    # Creates a new IPSet that can group either IPv4 or IPv6 individual ip addresses, ranges or subnets. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [IPSet]
    def create_ip_set(body, opts = {})
      data, _status_code, _headers = create_ip_set_with_http_info(body, opts)
      data
    end

    # Create IPSet
    # Creates a new IPSet that can group either IPv4 or IPv6 individual ip addresses, ranges or subnets. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSet, Integer, Hash)>] IPSet data, response status code and response headers
    def create_ip_set_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsIpSetsApi.create_ip_set ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.create_ip_set"
      end
      # resource path
      local_var_path = '/ip-sets'

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

      return_type = opts[:return_type] || 'IPSet' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsIpSetsApi#create_ip_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete IPSet
    # Deletes the specified IPSet.  By default, if the IPSet is added to an NSGroup, it won't be deleted. In such situations, pass \"force=true\" as query param to force delete the IPSet. 
    # @param ip_set_id IPSet Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_ip_set(ip_set_id, opts = {})
      delete_ip_set_with_http_info(ip_set_id, opts)
      nil
    end

    # Delete IPSet
    # Deletes the specified IPSet.  By default, if the IPSet is added to an NSGroup, it won&#x27;t be deleted. In such situations, pass \&quot;force&#x3D;true\&quot; as query param to force delete the IPSet. 
    # @param ip_set_id IPSet Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_ip_set_with_http_info(ip_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsIpSetsApi.delete_ip_set ...'
      end
      # verify the required parameter 'ip_set_id' is set
      if @api_client.config.client_side_validation && ip_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'ip_set_id' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.delete_ip_set"
      end
      # resource path
      local_var_path = '/ip-sets/{ip-set-id}'.sub('{' + 'ip-set-id' + '}', ip_set_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsIpSetsApi#delete_ip_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all IPAddresses in a IPSet
    # List all IP addresses in a IPSet 
    # @param ip_set_id IP Set Id
    # @param [Hash] opts the optional parameters
    # @return [IPAddressElementListResult]
    def get_ip_addresses(ip_set_id, opts = {})
      data, _status_code, _headers = get_ip_addresses_with_http_info(ip_set_id, opts)
      data
    end

    # Get all IPAddresses in a IPSet
    # List all IP addresses in a IPSet 
    # @param ip_set_id IP Set Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPAddressElementListResult, Integer, Hash)>] IPAddressElementListResult data, response status code and response headers
    def get_ip_addresses_with_http_info(ip_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsIpSetsApi.get_ip_addresses ...'
      end
      # verify the required parameter 'ip_set_id' is set
      if @api_client.config.client_side_validation && ip_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'ip_set_id' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.get_ip_addresses"
      end
      # resource path
      local_var_path = '/ip-sets/{ip-set-id}/members'.sub('{' + 'ip-set-id' + '}', ip_set_id.to_s)

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

      return_type = opts[:return_type] || 'IPAddressElementListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsIpSetsApi#get_ip_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List IPSets
    # Returns paginated list of IPSets 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IPSetListResult]
    def list_ip_sets(opts = {})
      data, _status_code, _headers = list_ip_sets_with_http_info(opts)
      data
    end

    # List IPSets
    # Returns paginated list of IPSets 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IPSetListResult, Integer, Hash)>] IPSetListResult data, response status code and response headers
    def list_ip_sets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsIpSetsApi.list_ip_sets ...'
      end
      # resource path
      local_var_path = '/ip-sets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'IPSetListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsIpSetsApi#list_ip_sets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read IPSet
    # Returns information about the specified IPSet 
    # @param ip_set_id IPSet Id
    # @param [Hash] opts the optional parameters
    # @return [IPSet]
    def read_ip_set(ip_set_id, opts = {})
      data, _status_code, _headers = read_ip_set_with_http_info(ip_set_id, opts)
      data
    end

    # Read IPSet
    # Returns information about the specified IPSet 
    # @param ip_set_id IPSet Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSet, Integer, Hash)>] IPSet data, response status code and response headers
    def read_ip_set_with_http_info(ip_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsIpSetsApi.read_ip_set ...'
      end
      # verify the required parameter 'ip_set_id' is set
      if @api_client.config.client_side_validation && ip_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'ip_set_id' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.read_ip_set"
      end
      # resource path
      local_var_path = '/ip-sets/{ip-set-id}'.sub('{' + 'ip-set-id' + '}', ip_set_id.to_s)

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

      return_type = opts[:return_type] || 'IPSet' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsIpSetsApi#read_ip_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update IPSet
    # Updates the specified IPSet. Modifiable parameters include description, display_name and ip_addresses. 
    # @param body 
    # @param ip_set_id IPSet Id
    # @param [Hash] opts the optional parameters
    # @return [IPSet]
    def update_ip_set(body, ip_set_id, opts = {})
      data, _status_code, _headers = update_ip_set_with_http_info(body, ip_set_id, opts)
      data
    end

    # Update IPSet
    # Updates the specified IPSet. Modifiable parameters include description, display_name and ip_addresses. 
    # @param body 
    # @param ip_set_id IPSet Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSet, Integer, Hash)>] IPSet data, response status code and response headers
    def update_ip_set_with_http_info(body, ip_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsIpSetsApi.update_ip_set ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.update_ip_set"
      end
      # verify the required parameter 'ip_set_id' is set
      if @api_client.config.client_side_validation && ip_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'ip_set_id' when calling ManagementPlaneApiGroupingObjectsIpSetsApi.update_ip_set"
      end
      # resource path
      local_var_path = '/ip-sets/{ip-set-id}'.sub('{' + 'ip-set-id' + '}', ip_set_id.to_s)

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

      return_type = opts[:return_type] || 'IPSet' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsIpSetsApi#update_ip_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
