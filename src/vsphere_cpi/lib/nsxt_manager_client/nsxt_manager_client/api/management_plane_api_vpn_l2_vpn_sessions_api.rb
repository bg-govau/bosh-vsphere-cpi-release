=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiVpnL2VpnSessionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create L2VPN session
    # Create L2VPN session and bind to a L2VPNService
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [L2VpnSession]
    def create_l2_vpn_session(body, opts = {})
      data, _status_code, _headers = create_l2_vpn_session_with_http_info(body, opts)
      data
    end

    # Create L2VPN session
    # Create L2VPN session and bind to a L2VPNService
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(L2VpnSession, Integer, Hash)>] L2VpnSession data, response status code and response headers
    def create_l2_vpn_session_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnL2VpnSessionsApi.create_l2_vpn_session ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiVpnL2VpnSessionsApi.create_l2_vpn_session"
      end
      # resource path
      local_var_path = '/vpn/l2vpn/sessions'

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

      return_type = opts[:return_type] || 'L2VpnSession' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnL2VpnSessionsApi#create_l2_vpn_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a L2VPN session
    # Delete a specific L2VPN session. If there are any logical switch ports attached to it, those needs to be deleted first.
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_l2_vpn_session(l2vpn_session_id, opts = {})
      delete_l2_vpn_session_with_http_info(l2vpn_session_id, opts)
      nil
    end

    # Delete a L2VPN session
    # Delete a specific L2VPN session. If there are any logical switch ports attached to it, those needs to be deleted first.
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_l2_vpn_session_with_http_info(l2vpn_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnL2VpnSessionsApi.delete_l2_vpn_session ...'
      end
      # verify the required parameter 'l2vpn_session_id' is set
      if @api_client.config.client_side_validation && l2vpn_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'l2vpn_session_id' when calling ManagementPlaneApiVpnL2VpnSessionsApi.delete_l2_vpn_session"
      end
      # resource path
      local_var_path = '/vpn/l2vpn/sessions/{l2vpn-session-id}'.sub('{' + 'l2vpn-session-id' + '}', l2vpn_session_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnL2VpnSessionsApi#delete_l2_vpn_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a L2VPN session
    # Get a specific L2VPN session
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [L2VpnSession]
    def get_l2_vpn_session(l2vpn_session_id, opts = {})
      data, _status_code, _headers = get_l2_vpn_session_with_http_info(l2vpn_session_id, opts)
      data
    end

    # Get a L2VPN session
    # Get a specific L2VPN session
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(L2VpnSession, Integer, Hash)>] L2VpnSession data, response status code and response headers
    def get_l2_vpn_session_with_http_info(l2vpn_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnL2VpnSessionsApi.get_l2_vpn_session ...'
      end
      # verify the required parameter 'l2vpn_session_id' is set
      if @api_client.config.client_side_validation && l2vpn_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'l2vpn_session_id' when calling ManagementPlaneApiVpnL2VpnSessionsApi.get_l2_vpn_session"
      end
      # resource path
      local_var_path = '/vpn/l2vpn/sessions/{l2vpn-session-id}'.sub('{' + 'l2vpn-session-id' + '}', l2vpn_session_id.to_s)

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

      return_type = opts[:return_type] || 'L2VpnSession' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnL2VpnSessionsApi#get_l2_vpn_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get peer codes for the L2VpnSession
    # Get peer codes for the L2VPN session to program the remote side of the tunnel.
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [L2VpnSessionPeerCodes]
    def get_l2_vpn_session_peer_codes(l2vpn_session_id, opts = {})
      data, _status_code, _headers = get_l2_vpn_session_peer_codes_with_http_info(l2vpn_session_id, opts)
      data
    end

    # Get peer codes for the L2VpnSession
    # Get peer codes for the L2VPN session to program the remote side of the tunnel.
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(L2VpnSessionPeerCodes, Integer, Hash)>] L2VpnSessionPeerCodes data, response status code and response headers
    def get_l2_vpn_session_peer_codes_with_http_info(l2vpn_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnL2VpnSessionsApi.get_l2_vpn_session_peer_codes ...'
      end
      # verify the required parameter 'l2vpn_session_id' is set
      if @api_client.config.client_side_validation && l2vpn_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'l2vpn_session_id' when calling ManagementPlaneApiVpnL2VpnSessionsApi.get_l2_vpn_session_peer_codes"
      end
      # resource path
      local_var_path = '/vpn/l2vpn/sessions/{l2vpn-session-id}/peer-codes'.sub('{' + 'l2vpn-session-id' + '}', l2vpn_session_id.to_s)

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

      return_type = opts[:return_type] || 'L2VpnSessionPeerCodes' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnL2VpnSessionsApi#get_l2_vpn_session_peer_codes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all L2VPN sessions
    # Get paginated list of all L2VPN sessions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :l2vpn_service_id Id of the L2Vpn Service
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [L2VpnSessionListResult]
    def list_l2_vpn_sessions(opts = {})
      data, _status_code, _headers = list_l2_vpn_sessions_with_http_info(opts)
      data
    end

    # Get all L2VPN sessions
    # Get paginated list of all L2VPN sessions
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :l2vpn_service_id Id of the L2Vpn Service
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(L2VpnSessionListResult, Integer, Hash)>] L2VpnSessionListResult data, response status code and response headers
    def list_l2_vpn_sessions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnL2VpnSessionsApi.list_l2_vpn_sessions ...'
      end
      # resource path
      local_var_path = '/vpn/l2vpn/sessions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'l2vpn_service_id'] = opts[:'l2vpn_service_id'] if !opts[:'l2vpn_service_id'].nil?
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

      return_type = opts[:return_type] || 'L2VpnSessionListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnL2VpnSessionsApi#list_l2_vpn_sessions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit a L2VPN session
    # Edit a specific L2VPN session
    # @param body 
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [L2VpnSession]
    def update_l2_vpn_session(body, l2vpn_session_id, opts = {})
      data, _status_code, _headers = update_l2_vpn_session_with_http_info(body, l2vpn_session_id, opts)
      data
    end

    # Edit a L2VPN session
    # Edit a specific L2VPN session
    # @param body 
    # @param l2vpn_session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(L2VpnSession, Integer, Hash)>] L2VpnSession data, response status code and response headers
    def update_l2_vpn_session_with_http_info(body, l2vpn_session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnL2VpnSessionsApi.update_l2_vpn_session ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiVpnL2VpnSessionsApi.update_l2_vpn_session"
      end
      # verify the required parameter 'l2vpn_session_id' is set
      if @api_client.config.client_side_validation && l2vpn_session_id.nil?
        fail ArgumentError, "Missing the required parameter 'l2vpn_session_id' when calling ManagementPlaneApiVpnL2VpnSessionsApi.update_l2_vpn_session"
      end
      # resource path
      local_var_path = '/vpn/l2vpn/sessions/{l2vpn-session-id}'.sub('{' + 'l2vpn-session-id' + '}', l2vpn_session_id.to_s)

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

      return_type = opts[:return_type] || 'L2VpnSession' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnL2VpnSessionsApi#update_l2_vpn_session\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
