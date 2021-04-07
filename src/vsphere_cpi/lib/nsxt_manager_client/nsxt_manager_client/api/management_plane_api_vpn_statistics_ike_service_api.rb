=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiVpnStatisticsIkeServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cumulative statistics for one IKE service instance
    # Cumulative statistics for one IKE service instance. Query parameter source supports only cached mode.
    # @param service_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [IPSecVPNIKEServiceSummary]
    def get_ip_sec_vpnike_service(service_id, opts = {})
      data, _status_code, _headers = get_ip_sec_vpnike_service_with_http_info(service_id, opts)
      data
    end

    # Cumulative statistics for one IKE service instance
    # Cumulative statistics for one IKE service instance. Query parameter source supports only cached mode.
    # @param service_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [Array<(IPSecVPNIKEServiceSummary, Integer, Hash)>] IPSecVPNIKEServiceSummary data, response status code and response headers
    def get_ip_sec_vpnike_service_with_http_info(service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnStatisticsIkeServiceApi.get_ip_sec_vpnike_service ...'
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling ManagementPlaneApiVpnStatisticsIkeServiceApi.get_ip_sec_vpnike_service"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/vpn/services/{service-id}/summary'.sub('{' + 'service-id' + '}', service_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'IPSecVPNIKEServiceSummary' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnStatisticsIkeServiceApi#get_ip_sec_vpnike_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
