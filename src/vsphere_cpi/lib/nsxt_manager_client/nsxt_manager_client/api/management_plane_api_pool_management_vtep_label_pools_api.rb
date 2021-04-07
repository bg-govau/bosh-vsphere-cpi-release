=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiPoolManagementVtepLabelPoolsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List virtual tunnel endpoint Label Pools
    # Returns a list of all virtual tunnel endpoint label pools 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [VtepLabelPoolListResult]
    def list_vtep_label_pools(opts = {})
      data, _status_code, _headers = list_vtep_label_pools_with_http_info(opts)
      data
    end

    # List virtual tunnel endpoint Label Pools
    # Returns a list of all virtual tunnel endpoint label pools 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(VtepLabelPoolListResult, Integer, Hash)>] VtepLabelPoolListResult data, response status code and response headers
    def list_vtep_label_pools_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiPoolManagementVtepLabelPoolsApi.list_vtep_label_pools ...'
      end
      # resource path
      local_var_path = '/pools/vtep-label-pools'

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

      return_type = opts[:return_type] || 'VtepLabelPoolListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiPoolManagementVtepLabelPoolsApi#list_vtep_label_pools\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read a virtual tunnel endpoint label pool
    # Returns information about the specified virtual tunnel endpoint label pool. 
    # @param pool_id Virtual tunnel endpoint label pool ID
    # @param [Hash] opts the optional parameters
    # @return [VtepLabelPool]
    def read_vtep_label_pool(pool_id, opts = {})
      data, _status_code, _headers = read_vtep_label_pool_with_http_info(pool_id, opts)
      data
    end

    # Read a virtual tunnel endpoint label pool
    # Returns information about the specified virtual tunnel endpoint label pool. 
    # @param pool_id Virtual tunnel endpoint label pool ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(VtepLabelPool, Integer, Hash)>] VtepLabelPool data, response status code and response headers
    def read_vtep_label_pool_with_http_info(pool_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiPoolManagementVtepLabelPoolsApi.read_vtep_label_pool ...'
      end
      # verify the required parameter 'pool_id' is set
      if @api_client.config.client_side_validation && pool_id.nil?
        fail ArgumentError, "Missing the required parameter 'pool_id' when calling ManagementPlaneApiPoolManagementVtepLabelPoolsApi.read_vtep_label_pool"
      end
      # resource path
      local_var_path = '/pools/vtep-label-pools/{pool-id}'.sub('{' + 'pool-id' + '}', pool_id.to_s)

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

      return_type = opts[:return_type] || 'VtepLabelPool' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiPoolManagementVtepLabelPoolsApi#read_vtep_label_pool\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
