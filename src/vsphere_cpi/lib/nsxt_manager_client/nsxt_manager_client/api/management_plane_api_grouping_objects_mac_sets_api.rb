=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiGroupingObjectsMacSetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a MAC address to a MACSet
    # Add an individual MAC address to a MACSet 
    # @param body 
    # @param mac_set_id MAC Set Id
    # @param [Hash] opts the optional parameters
    # @return [MACAddressElement]
    def add_mac_address(body, mac_set_id, opts = {})
      data, _status_code, _headers = add_mac_address_with_http_info(body, mac_set_id, opts)
      data
    end

    # Add a MAC address to a MACSet
    # Add an individual MAC address to a MACSet 
    # @param body 
    # @param mac_set_id MAC Set Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(MACAddressElement, Integer, Hash)>] MACAddressElement data, response status code and response headers
    def add_mac_address_with_http_info(body, mac_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.add_mac_address ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.add_mac_address"
      end
      # verify the required parameter 'mac_set_id' is set
      if @api_client.config.client_side_validation && mac_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'mac_set_id' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.add_mac_address"
      end
      # resource path
      local_var_path = '/mac-sets/{mac-set-id}/members'.sub('{' + 'mac-set-id' + '}', mac_set_id.to_s)

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

      return_type = opts[:return_type] || 'MACAddressElement' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#add_mac_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create MACSet
    # Creates a new MACSet that can group individual MAC addresses. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [MACSet]
    def create_mac_set(body, opts = {})
      data, _status_code, _headers = create_mac_set_with_http_info(body, opts)
      data
    end

    # Create MACSet
    # Creates a new MACSet that can group individual MAC addresses. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MACSet, Integer, Hash)>] MACSet data, response status code and response headers
    def create_mac_set_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.create_mac_set ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.create_mac_set"
      end
      # resource path
      local_var_path = '/mac-sets'

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

      return_type = opts[:return_type] || 'MACSet' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#create_mac_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete MACSet
    # Deletes the specified MACSet. By default, if the MACSet is added to an NSGroup, it won't be deleted. In such situations, pass \"force=true\" as query param to force delete the MACSet. 
    # @param mac_set_id MACSet Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_mac_set(mac_set_id, opts = {})
      delete_mac_set_with_http_info(mac_set_id, opts)
      nil
    end

    # Delete MACSet
    # Deletes the specified MACSet. By default, if the MACSet is added to an NSGroup, it won&#x27;t be deleted. In such situations, pass \&quot;force&#x3D;true\&quot; as query param to force delete the MACSet. 
    # @param mac_set_id MACSet Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_mac_set_with_http_info(mac_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.delete_mac_set ...'
      end
      # verify the required parameter 'mac_set_id' is set
      if @api_client.config.client_side_validation && mac_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'mac_set_id' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.delete_mac_set"
      end
      # resource path
      local_var_path = '/mac-sets/{mac-set-id}'.sub('{' + 'mac-set-id' + '}', mac_set_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#delete_mac_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all MACAddresses in a MACSet
    # List all MAC addresses in a MACSet 
    # @param mac_set_id MAC Set Id
    # @param [Hash] opts the optional parameters
    # @return [MACAddressElementListResult]
    def get_mac_addresses(mac_set_id, opts = {})
      data, _status_code, _headers = get_mac_addresses_with_http_info(mac_set_id, opts)
      data
    end

    # Get all MACAddresses in a MACSet
    # List all MAC addresses in a MACSet 
    # @param mac_set_id MAC Set Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(MACAddressElementListResult, Integer, Hash)>] MACAddressElementListResult data, response status code and response headers
    def get_mac_addresses_with_http_info(mac_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.get_mac_addresses ...'
      end
      # verify the required parameter 'mac_set_id' is set
      if @api_client.config.client_side_validation && mac_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'mac_set_id' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.get_mac_addresses"
      end
      # resource path
      local_var_path = '/mac-sets/{mac-set-id}/members'.sub('{' + 'mac-set-id' + '}', mac_set_id.to_s)

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

      return_type = opts[:return_type] || 'MACAddressElementListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#get_mac_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List MACSets
    # Returns paginated list of MACSets 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [MACSetListResult]
    def list_mac_sets(opts = {})
      data, _status_code, _headers = list_mac_sets_with_http_info(opts)
      data
    end

    # List MACSets
    # Returns paginated list of MACSets 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(MACSetListResult, Integer, Hash)>] MACSetListResult data, response status code and response headers
    def list_mac_sets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.list_mac_sets ...'
      end
      # resource path
      local_var_path = '/mac-sets'

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

      return_type = opts[:return_type] || 'MACSetListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#list_mac_sets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read MACSet
    # Returns information about the specified MACSet 
    # @param mac_set_id MACSet Id
    # @param [Hash] opts the optional parameters
    # @return [MACSet]
    def read_mac_set(mac_set_id, opts = {})
      data, _status_code, _headers = read_mac_set_with_http_info(mac_set_id, opts)
      data
    end

    # Read MACSet
    # Returns information about the specified MACSet 
    # @param mac_set_id MACSet Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(MACSet, Integer, Hash)>] MACSet data, response status code and response headers
    def read_mac_set_with_http_info(mac_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.read_mac_set ...'
      end
      # verify the required parameter 'mac_set_id' is set
      if @api_client.config.client_side_validation && mac_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'mac_set_id' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.read_mac_set"
      end
      # resource path
      local_var_path = '/mac-sets/{mac-set-id}'.sub('{' + 'mac-set-id' + '}', mac_set_id.to_s)

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

      return_type = opts[:return_type] || 'MACSet' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#read_mac_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove a MAC address from given MACSet
    # Remove an individual MAC address from a MACSet 
    # @param mac_set_id MACSet Id
    # @param mac_address MAC address to be removed
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def remove_mac_address(mac_set_id, mac_address, opts = {})
      remove_mac_address_with_http_info(mac_set_id, mac_address, opts)
      nil
    end

    # Remove a MAC address from given MACSet
    # Remove an individual MAC address from a MACSet 
    # @param mac_set_id MACSet Id
    # @param mac_address MAC address to be removed
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def remove_mac_address_with_http_info(mac_set_id, mac_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.remove_mac_address ...'
      end
      # verify the required parameter 'mac_set_id' is set
      if @api_client.config.client_side_validation && mac_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'mac_set_id' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.remove_mac_address"
      end
      # verify the required parameter 'mac_address' is set
      if @api_client.config.client_side_validation && mac_address.nil?
        fail ArgumentError, "Missing the required parameter 'mac_address' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.remove_mac_address"
      end
      # resource path
      local_var_path = '/mac-sets/{mac-set-id}/members/{mac-address}'.sub('{' + 'mac-set-id' + '}', mac_set_id.to_s).sub('{' + 'mac-address' + '}', mac_address.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#remove_mac_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update MACSet
    # Updates the specified MACSet. Modifiable parameters include the description, display_name and mac_addresses. 
    # @param body 
    # @param mac_set_id MACSet Id
    # @param [Hash] opts the optional parameters
    # @return [MACSet]
    def update_mac_set(body, mac_set_id, opts = {})
      data, _status_code, _headers = update_mac_set_with_http_info(body, mac_set_id, opts)
      data
    end

    # Update MACSet
    # Updates the specified MACSet. Modifiable parameters include the description, display_name and mac_addresses. 
    # @param body 
    # @param mac_set_id MACSet Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(MACSet, Integer, Hash)>] MACSet data, response status code and response headers
    def update_mac_set_with_http_info(body, mac_set_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsMacSetsApi.update_mac_set ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.update_mac_set"
      end
      # verify the required parameter 'mac_set_id' is set
      if @api_client.config.client_side_validation && mac_set_id.nil?
        fail ArgumentError, "Missing the required parameter 'mac_set_id' when calling ManagementPlaneApiGroupingObjectsMacSetsApi.update_mac_set"
      end
      # resource path
      local_var_path = '/mac-sets/{mac-set-id}'.sub('{' + 'mac-set-id' + '}', mac_set_id.to_s)

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

      return_type = opts[:return_type] || 'MACSet' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsMacSetsApi#update_mac_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
