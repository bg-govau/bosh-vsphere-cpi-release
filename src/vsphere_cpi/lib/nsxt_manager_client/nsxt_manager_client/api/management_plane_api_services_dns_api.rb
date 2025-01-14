=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiServicesDnsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Clear the current cache of the DNS forwarder.
    # Clear the current cache of the DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def clear_dns_forwarder_cache_clear_cache(forwarder_id, opts = {})
      clear_dns_forwarder_cache_clear_cache_with_http_info(forwarder_id, opts)
      nil
    end

    # Clear the current cache of the DNS forwarder.
    # Clear the current cache of the DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def clear_dns_forwarder_cache_clear_cache_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.clear_dns_forwarder_cache_clear_cache ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.clear_dns_forwarder_cache_clear_cache"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}?action=clear_cache'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#clear_dns_forwarder_cache_clear_cache\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a DNS forwader
    # Create a DNS forwader upon a logical router. There is only one DNS forwarder can be created upon a given logical router. 
    # @param dns_forwarder 
    # @param [Hash] opts the optional parameters
    # @return [DnsForwarder]
    def create_dns_forwader(dns_forwarder, opts = {})
      data, _status_code, _headers = create_dns_forwader_with_http_info(dns_forwarder, opts)
      data
    end

    # Create a DNS forwader
    # Create a DNS forwader upon a logical router. There is only one DNS forwarder can be created upon a given logical router. 
    # @param dns_forwarder 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsForwarder, Fixnum, Hash)>] DnsForwarder data, response status code and response headers
    def create_dns_forwader_with_http_info(dns_forwarder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.create_dns_forwader ...'
      end
      # verify the required parameter 'dns_forwarder' is set
      if @api_client.config.client_side_validation && dns_forwarder.nil?
        fail ArgumentError, "Missing the required parameter 'dns_forwarder' when calling ManagementPlaneApiServicesDnsApi.create_dns_forwader"
      end
      # resource path
      local_var_path = '/dns/forwarders'

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
      post_body = @api_client.object_to_http_body(dns_forwarder)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DnsForwarder')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#create_dns_forwader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a specific DNS forwarder
    # Delete a specific DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_dns_forwarder(forwarder_id, opts = {})
      delete_dns_forwarder_with_http_info(forwarder_id, opts)
      nil
    end

    # Delete a specific DNS forwarder
    # Delete a specific DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_dns_forwarder_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.delete_dns_forwarder ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.delete_dns_forwarder"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#delete_dns_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Disable the DNS forwarder.
    # Disable the DNS forwarder if the forwarder is currently enbled. If the DNS forwarder is already disabled, the forwarder will not be re-disabled.  Please note, once a DNS forwarder is disabled then enabled, the previous DNS forwarder statistics counters will be reset. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def disable_dns_forwarder_disable(forwarder_id, opts = {})
      disable_dns_forwarder_disable_with_http_info(forwarder_id, opts)
      nil
    end

    # Disable the DNS forwarder.
    # Disable the DNS forwarder if the forwarder is currently enbled. If the DNS forwarder is already disabled, the forwarder will not be re-disabled.  Please note, once a DNS forwarder is disabled then enabled, the previous DNS forwarder statistics counters will be reset. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def disable_dns_forwarder_disable_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.disable_dns_forwarder_disable ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.disable_dns_forwarder_disable"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}?action=disable'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#disable_dns_forwarder_disable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Enable the DNS forwarder.
    # Enable the DNS forwarder if the forwarder is currently disabled. If the DNS forwarder is already enabled, the forwarder will not be re-enabled.  Please note, once a DNS forwarder is disabled then enabled, the previous DNS forwarder statistics counters will be reset. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def enable_dns_forwarder_enable(forwarder_id, opts = {})
      enable_dns_forwarder_enable_with_http_info(forwarder_id, opts)
      nil
    end

    # Enable the DNS forwarder.
    # Enable the DNS forwarder if the forwarder is currently disabled. If the DNS forwarder is already enabled, the forwarder will not be re-enabled.  Please note, once a DNS forwarder is disabled then enabled, the previous DNS forwarder statistics counters will be reset. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def enable_dns_forwarder_enable_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.enable_dns_forwarder_enable ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.enable_dns_forwarder_enable"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}?action=enable'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#enable_dns_forwarder_enable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the realized state of a DNS forwarder
    # Return the realized state information of a DNS forwarder. After a DNS forwarder was created or updated, you can invoke this API to check the realization state of the forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :barrier_id 
    # @option opts [String] :request_id Realization request ID
    # @return [ConfigurationState]
    def get_dns_forwarder_state(forwarder_id, opts = {})
      data, _status_code, _headers = get_dns_forwarder_state_with_http_info(forwarder_id, opts)
      data
    end

    # Get the realized state of a DNS forwarder
    # Return the realized state information of a DNS forwarder. After a DNS forwarder was created or updated, you can invoke this API to check the realization state of the forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :barrier_id 
    # @option opts [String] :request_id Realization request ID
    # @return [Array<(ConfigurationState, Fixnum, Hash)>] ConfigurationState data, response status code and response headers
    def get_dns_forwarder_state_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.get_dns_forwarder_state ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.get_dns_forwarder_state"
      end
      if @api_client.config.client_side_validation && !opts[:'barrier_id'].nil? && opts[:'barrier_id'] < 0
        fail ArgumentError, 'invalid value for "opts[:"barrier_id"]" when calling ManagementPlaneApiServicesDnsApi.get_dns_forwarder_state, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}/state'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'barrier_id'] = opts[:'barrier_id'] if !opts[:'barrier_id'].nil?
      query_params[:'request_id'] = opts[:'request_id'] if !opts[:'request_id'].nil?

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
        :return_type => 'ConfigurationState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#get_dns_forwarder_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get statistics of given dns forwarder
    # Returns the statistics of the given dns forwarder specified by forwarder id. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [DnsForwarderStatistics]
    def get_dns_forwarder_statistics(forwarder_id, opts = {})
      data, _status_code, _headers = get_dns_forwarder_statistics_with_http_info(forwarder_id, opts)
      data
    end

    # Get statistics of given dns forwarder
    # Returns the statistics of the given dns forwarder specified by forwarder id. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsForwarderStatistics, Fixnum, Hash)>] DnsForwarderStatistics data, response status code and response headers
    def get_dns_forwarder_statistics_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.get_dns_forwarder_statistics ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.get_dns_forwarder_statistics"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}/statistics'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
        :return_type => 'DnsForwarderStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#get_dns_forwarder_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get current status of the given DNS forwarder
    # Returns the current status of the given DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [DnsForwarderStatus]
    def get_dns_forwarder_status(forwarder_id, opts = {})
      data, _status_code, _headers = get_dns_forwarder_status_with_http_info(forwarder_id, opts)
      data
    end

    # Get current status of the given DNS forwarder
    # Returns the current status of the given DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsForwarderStatus, Fixnum, Hash)>] DnsForwarderStatus data, response status code and response headers
    def get_dns_forwarder_status_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.get_dns_forwarder_status ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.get_dns_forwarder_status"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}/status'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
        :return_type => 'DnsForwarderStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#get_dns_forwarder_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the recent failed DNS queries
    # Return the given count of recent failed DNS queries from DNS forwarder. Since the DNS forwarder is running in Acitve/Standby HA mode on transport nodes, the given count of queries will be returned from each nodes. Hence the total queries returned could be doubled. If no count is specified, 100 recent failed queries are returned. If the recent failures is less than the given count, all the failures will be returned. The maximum count is 1,000. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The count of the failed DNS queries (default to 100)
    # @return [DnsFailedQueries]
    def get_failed_dns_queries(forwarder_id, opts = {})
      data, _status_code, _headers = get_failed_dns_queries_with_http_info(forwarder_id, opts)
      data
    end

    # Get the recent failed DNS queries
    # Return the given count of recent failed DNS queries from DNS forwarder. Since the DNS forwarder is running in Acitve/Standby HA mode on transport nodes, the given count of queries will be returned from each nodes. Hence the total queries returned could be doubled. If no count is specified, 100 recent failed queries are returned. If the recent failures is less than the given count, all the failures will be returned. The maximum count is 1,000. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :count The count of the failed DNS queries
    # @return [Array<(DnsFailedQueries, Fixnum, Hash)>] DnsFailedQueries data, response status code and response headers
    def get_failed_dns_queries_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.get_failed_dns_queries ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.get_failed_dns_queries"
      end
      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling ManagementPlaneApiServicesDnsApi.get_failed_dns_queries, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'count'].nil? && opts[:'count'] < 1
        fail ArgumentError, 'invalid value for "opts[:"count"]" when calling ManagementPlaneApiServicesDnsApi.get_failed_dns_queries, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}/failed-queries'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

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
        :return_type => 'DnsFailedQueries')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#get_failed_dns_queries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a paginated list of DNS forwarders
    # Get a paginated list of DNS forwarders. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [DnsForwarderListResult]
    def list_dns_forwaders(opts = {})
      data, _status_code, _headers = list_dns_forwaders_with_http_info(opts)
      data
    end

    # Get a paginated list of DNS forwarders
    # Get a paginated list of DNS forwarders. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(DnsForwarderListResult, Fixnum, Hash)>] DnsForwarderListResult data, response status code and response headers
    def list_dns_forwaders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.list_dns_forwaders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiServicesDnsApi.list_dns_forwaders, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiServicesDnsApi.list_dns_forwaders, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/dns/forwarders'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

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
        :return_type => 'DnsForwarderListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#list_dns_forwaders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resolve a given address via the DNS forwarder
    # Query the nameserver for an ip-address or a FQDN of the given an address optionally using an specified DNS server. If the address is a fqdn, nslookup will resolve ip-address with it. If the address is an ip-address, do a reverse lookup and answer fqdn(s). 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :address IP address or FQDN for nslookup
    # @option opts [String] :server_ip IPv4 address
    # @option opts [String] :source_ip IPv4 address
    # @return [DnsAnswer]
    def lookup_address(forwarder_id, opts = {})
      data, _status_code, _headers = lookup_address_with_http_info(forwarder_id, opts)
      data
    end

    # Resolve a given address via the DNS forwarder
    # Query the nameserver for an ip-address or a FQDN of the given an address optionally using an specified DNS server. If the address is a fqdn, nslookup will resolve ip-address with it. If the address is an ip-address, do a reverse lookup and answer fqdn(s). 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :address IP address or FQDN for nslookup
    # @option opts [String] :server_ip IPv4 address
    # @option opts [String] :source_ip IPv4 address
    # @return [Array<(DnsAnswer, Fixnum, Hash)>] DnsAnswer data, response status code and response headers
    def lookup_address_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.lookup_address ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.lookup_address"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}/nslookup'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'address'] = opts[:'address'] if !opts[:'address'].nil?
      query_params[:'server_ip'] = opts[:'server_ip'] if !opts[:'server_ip'].nil?
      query_params[:'source_ip'] = opts[:'source_ip'] if !opts[:'source_ip'].nil?

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
        :return_type => 'DnsAnswer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#lookup_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retrieve a DNS forwarder
    # Retrieve a DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [DnsForwarder]
    def read_dns_forwader(forwarder_id, opts = {})
      data, _status_code, _headers = read_dns_forwader_with_http_info(forwarder_id, opts)
      data
    end

    # Retrieve a DNS forwarder
    # Retrieve a DNS forwarder. 
    # @param forwarder_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsForwarder, Fixnum, Hash)>] DnsForwarder data, response status code and response headers
    def read_dns_forwader_with_http_info(forwarder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.read_dns_forwader ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.read_dns_forwader"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
        :return_type => 'DnsForwarder')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#read_dns_forwader\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a specific DNS forwarder
    # Update a specific DNS forwarder. 
    # @param forwarder_id 
    # @param dns_forwarder 
    # @param [Hash] opts the optional parameters
    # @return [DnsForwarder]
    def update_dns_forwarder(forwarder_id, dns_forwarder, opts = {})
      data, _status_code, _headers = update_dns_forwarder_with_http_info(forwarder_id, dns_forwarder, opts)
      data
    end

    # Update a specific DNS forwarder
    # Update a specific DNS forwarder. 
    # @param forwarder_id 
    # @param dns_forwarder 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsForwarder, Fixnum, Hash)>] DnsForwarder data, response status code and response headers
    def update_dns_forwarder_with_http_info(forwarder_id, dns_forwarder, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesDnsApi.update_dns_forwarder ...'
      end
      # verify the required parameter 'forwarder_id' is set
      if @api_client.config.client_side_validation && forwarder_id.nil?
        fail ArgumentError, "Missing the required parameter 'forwarder_id' when calling ManagementPlaneApiServicesDnsApi.update_dns_forwarder"
      end
      # verify the required parameter 'dns_forwarder' is set
      if @api_client.config.client_side_validation && dns_forwarder.nil?
        fail ArgumentError, "Missing the required parameter 'dns_forwarder' when calling ManagementPlaneApiServicesDnsApi.update_dns_forwarder"
      end
      # resource path
      local_var_path = '/dns/forwarders/{forwarder-id}'.sub('{' + 'forwarder-id' + '}', forwarder_id.to_s)

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
      post_body = @api_client.object_to_http_body(dns_forwarder)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DnsForwarder')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesDnsApi#update_dns_forwarder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
