=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiNetworkTransportClusterProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Cluster Profile
    # Create a cluster profile. The resource_type is required. 
    # @param cluster_profile 
    # @param [Hash] opts the optional parameters
    # @return [ClusterProfile]
    def create_cluster_profile(cluster_profile, opts = {})
      data, _status_code, _headers = create_cluster_profile_with_http_info(cluster_profile, opts)
      data
    end

    # Create a Cluster Profile
    # Create a cluster profile. The resource_type is required. 
    # @param cluster_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterProfile, Fixnum, Hash)>] ClusterProfile data, response status code and response headers
    def create_cluster_profile_with_http_info(cluster_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportClusterProfilesApi.create_cluster_profile ...'
      end
      # verify the required parameter 'cluster_profile' is set
      if @api_client.config.client_side_validation && cluster_profile.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_profile' when calling ManagementPlaneApiNetworkTransportClusterProfilesApi.create_cluster_profile"
      end
      # resource path
      local_var_path = '/cluster-profiles'

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
      post_body = @api_client.object_to_http_body(cluster_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClusterProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportClusterProfilesApi#create_cluster_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a cluster profile
    # Delete a specified cluster profile.
    # @param cluster_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cluster_profile(cluster_profile_id, opts = {})
      delete_cluster_profile_with_http_info(cluster_profile_id, opts)
      nil
    end

    # Delete a cluster profile
    # Delete a specified cluster profile.
    # @param cluster_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_cluster_profile_with_http_info(cluster_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportClusterProfilesApi.delete_cluster_profile ...'
      end
      # verify the required parameter 'cluster_profile_id' is set
      if @api_client.config.client_side_validation && cluster_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_profile_id' when calling ManagementPlaneApiNetworkTransportClusterProfilesApi.delete_cluster_profile"
      end
      # resource path
      local_var_path = '/cluster-profiles/{cluster-profile-id}'.sub('{' + 'cluster-profile-id' + '}', cluster_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportClusterProfilesApi#delete_cluster_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get cluster profile by Id
    # Returns information about a specified cluster profile.
    # @param cluster_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [ClusterProfile]
    def get_cluster_profile(cluster_profile_id, opts = {})
      data, _status_code, _headers = get_cluster_profile_with_http_info(cluster_profile_id, opts)
      data
    end

    # Get cluster profile by Id
    # Returns information about a specified cluster profile.
    # @param cluster_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterProfile, Fixnum, Hash)>] ClusterProfile data, response status code and response headers
    def get_cluster_profile_with_http_info(cluster_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportClusterProfilesApi.get_cluster_profile ...'
      end
      # verify the required parameter 'cluster_profile_id' is set
      if @api_client.config.client_side_validation && cluster_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_profile_id' when calling ManagementPlaneApiNetworkTransportClusterProfilesApi.get_cluster_profile"
      end
      # resource path
      local_var_path = '/cluster-profiles/{cluster-profile-id}'.sub('{' + 'cluster-profile-id' + '}', cluster_profile_id.to_s)

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
        :return_type => 'ClusterProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportClusterProfilesApi#get_cluster_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Cluster Profiles
    # Returns paginated list of cluster profiles Cluster profiles define policies for edge cluster and bridge cluster. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources (default to true)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :resource_type Supported cluster profiles.
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ClusterProfileListResult]
    def list_cluster_profiles(opts = {})
      data, _status_code, _headers = list_cluster_profiles_with_http_info(opts)
      data
    end

    # List Cluster Profiles
    # Returns paginated list of cluster profiles Cluster profiles define policies for edge cluster and bridge cluster. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :resource_type Supported cluster profiles.
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ClusterProfileListResult, Fixnum, Hash)>] ClusterProfileListResult data, response status code and response headers
    def list_cluster_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportClusterProfilesApi.list_cluster_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiNetworkTransportClusterProfilesApi.list_cluster_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiNetworkTransportClusterProfilesApi.list_cluster_profiles, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'resource_type'] && !['EdgeHighAvailabilityProfile', 'BridgeHighAvailabilityClusterProfile'].include?(opts[:'resource_type'])
        fail ArgumentError, 'invalid value for "resource_type", must be one of EdgeHighAvailabilityProfile, BridgeHighAvailabilityClusterProfile'
      end
      # resource path
      local_var_path = '/cluster-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_system_owned'] = opts[:'include_system_owned'] if !opts[:'include_system_owned'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'resource_type'] = opts[:'resource_type'] if !opts[:'resource_type'].nil?
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
        :return_type => 'ClusterProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportClusterProfilesApi#list_cluster_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a cluster profile
    # Modifie a specified cluster profile. The body of the PUT request must include the resource_type. 
    # @param cluster_profile_id 
    # @param cluster_profile 
    # @param [Hash] opts the optional parameters
    # @return [ClusterProfile]
    def update_cluster_profile(cluster_profile_id, cluster_profile, opts = {})
      data, _status_code, _headers = update_cluster_profile_with_http_info(cluster_profile_id, cluster_profile, opts)
      data
    end

    # Update a cluster profile
    # Modifie a specified cluster profile. The body of the PUT request must include the resource_type. 
    # @param cluster_profile_id 
    # @param cluster_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterProfile, Fixnum, Hash)>] ClusterProfile data, response status code and response headers
    def update_cluster_profile_with_http_info(cluster_profile_id, cluster_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportClusterProfilesApi.update_cluster_profile ...'
      end
      # verify the required parameter 'cluster_profile_id' is set
      if @api_client.config.client_side_validation && cluster_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_profile_id' when calling ManagementPlaneApiNetworkTransportClusterProfilesApi.update_cluster_profile"
      end
      # verify the required parameter 'cluster_profile' is set
      if @api_client.config.client_side_validation && cluster_profile.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_profile' when calling ManagementPlaneApiNetworkTransportClusterProfilesApi.update_cluster_profile"
      end
      # resource path
      local_var_path = '/cluster-profiles/{cluster-profile-id}'.sub('{' + 'cluster-profile-id' + '}', cluster_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(cluster_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClusterProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportClusterProfilesApi#update_cluster_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end