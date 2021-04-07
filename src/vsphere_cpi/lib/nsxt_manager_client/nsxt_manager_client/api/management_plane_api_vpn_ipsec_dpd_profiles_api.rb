=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiVpnIpsecDpdProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create dead peer detection (DPD) profile
    # Create dead peer detection (DPD) profile. Any change in profile affects all sessions consuming this profile.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVPNDPDProfile]
    def create_ip_sec_vpndpd_profile(body, opts = {})
      data, _status_code, _headers = create_ip_sec_vpndpd_profile_with_http_info(body, opts)
      data
    end

    # Create dead peer detection (DPD) profile
    # Create dead peer detection (DPD) profile. Any change in profile affects all sessions consuming this profile.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVPNDPDProfile, Integer, Hash)>] IPSecVPNDPDProfile data, response status code and response headers
    def create_ip_sec_vpndpd_profile_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecDpdProfilesApi.create_ip_sec_vpndpd_profile ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiVpnIpsecDpdProfilesApi.create_ip_sec_vpndpd_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/dpd-profiles'

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

      return_type = opts[:return_type] || 'IPSecVPNDPDProfile' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecDpdProfilesApi#create_ip_sec_vpndpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete dead peer detection (DPD) profile
    # Delete dead peer detection (DPD) profile.
    # @param ipsec_vpn_dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_ip_sec_vpndpd_profile(ipsec_vpn_dpd_profile_id, opts = {})
      delete_ip_sec_vpndpd_profile_with_http_info(ipsec_vpn_dpd_profile_id, opts)
      nil
    end

    # Delete dead peer detection (DPD) profile
    # Delete dead peer detection (DPD) profile.
    # @param ipsec_vpn_dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_ip_sec_vpndpd_profile_with_http_info(ipsec_vpn_dpd_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecDpdProfilesApi.delete_ip_sec_vpndpd_profile ...'
      end
      # verify the required parameter 'ipsec_vpn_dpd_profile_id' is set
      if @api_client.config.client_side_validation && ipsec_vpn_dpd_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipsec_vpn_dpd_profile_id' when calling ManagementPlaneApiVpnIpsecDpdProfilesApi.delete_ip_sec_vpndpd_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/dpd-profiles/{ipsec-vpn-dpd-profile-id}'.sub('{' + 'ipsec-vpn-dpd-profile-id' + '}', ipsec_vpn_dpd_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecDpdProfilesApi#delete_ip_sec_vpndpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get IPSec dead peer detection (DPD) profile
    # Get IPSec dead peer detection (DPD) profile.
    # @param ipsec_vpn_dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVPNDPDProfile]
    def get_ip_sec_vpndpd_profile(ipsec_vpn_dpd_profile_id, opts = {})
      data, _status_code, _headers = get_ip_sec_vpndpd_profile_with_http_info(ipsec_vpn_dpd_profile_id, opts)
      data
    end

    # Get IPSec dead peer detection (DPD) profile
    # Get IPSec dead peer detection (DPD) profile.
    # @param ipsec_vpn_dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVPNDPDProfile, Integer, Hash)>] IPSecVPNDPDProfile data, response status code and response headers
    def get_ip_sec_vpndpd_profile_with_http_info(ipsec_vpn_dpd_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecDpdProfilesApi.get_ip_sec_vpndpd_profile ...'
      end
      # verify the required parameter 'ipsec_vpn_dpd_profile_id' is set
      if @api_client.config.client_side_validation && ipsec_vpn_dpd_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipsec_vpn_dpd_profile_id' when calling ManagementPlaneApiVpnIpsecDpdProfilesApi.get_ip_sec_vpndpd_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/dpd-profiles/{ipsec-vpn-dpd-profile-id}'.sub('{' + 'ipsec-vpn-dpd-profile-id' + '}', ipsec_vpn_dpd_profile_id.to_s)

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

      return_type = opts[:return_type] || 'IPSecVPNDPDProfile' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecDpdProfilesApi#get_ip_sec_vpndpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get IPSec dead peer detection (DPD)  profile list result
    # Get paginated list of all dead peer detection (DPD) profiles.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IPSecVPNDPDProfileListResult]
    def list_ip_sec_vpndpd_profiles(opts = {})
      data, _status_code, _headers = list_ip_sec_vpndpd_profiles_with_http_info(opts)
      data
    end

    # Get IPSec dead peer detection (DPD)  profile list result
    # Get paginated list of all dead peer detection (DPD) profiles.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IPSecVPNDPDProfileListResult, Integer, Hash)>] IPSecVPNDPDProfileListResult data, response status code and response headers
    def list_ip_sec_vpndpd_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecDpdProfilesApi.list_ip_sec_vpndpd_profiles ...'
      end
      # resource path
      local_var_path = '/vpn/ipsec/dpd-profiles'

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

      return_type = opts[:return_type] || 'IPSecVPNDPDProfileListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecDpdProfilesApi#list_ip_sec_vpndpd_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit IPSec dead peer detection (DPD) profile
    # Edit IPSec dead peer detection (DPD) profile.
    # @param body 
    # @param ipsec_vpn_dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVPNDPDProfile]
    def update_ip_sec_vpndpd_profile(body, ipsec_vpn_dpd_profile_id, opts = {})
      data, _status_code, _headers = update_ip_sec_vpndpd_profile_with_http_info(body, ipsec_vpn_dpd_profile_id, opts)
      data
    end

    # Edit IPSec dead peer detection (DPD) profile
    # Edit IPSec dead peer detection (DPD) profile.
    # @param body 
    # @param ipsec_vpn_dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVPNDPDProfile, Integer, Hash)>] IPSecVPNDPDProfile data, response status code and response headers
    def update_ip_sec_vpndpd_profile_with_http_info(body, ipsec_vpn_dpd_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnIpsecDpdProfilesApi.update_ip_sec_vpndpd_profile ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiVpnIpsecDpdProfilesApi.update_ip_sec_vpndpd_profile"
      end
      # verify the required parameter 'ipsec_vpn_dpd_profile_id' is set
      if @api_client.config.client_side_validation && ipsec_vpn_dpd_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ipsec_vpn_dpd_profile_id' when calling ManagementPlaneApiVpnIpsecDpdProfilesApi.update_ip_sec_vpndpd_profile"
      end
      # resource path
      local_var_path = '/vpn/ipsec/dpd-profiles/{ipsec-vpn-dpd-profile-id}'.sub('{' + 'ipsec-vpn-dpd-profile-id' + '}', ipsec_vpn_dpd_profile_id.to_s)

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

      return_type = opts[:return_type] || 'IPSecVPNDPDProfile' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnIpsecDpdProfilesApi#update_ip_sec_vpndpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
