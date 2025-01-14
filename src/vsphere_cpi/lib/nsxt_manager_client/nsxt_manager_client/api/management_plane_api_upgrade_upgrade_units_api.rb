=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiUpgradeUpgradeUnitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a specific upgrade unit
    # Get a specific upgrade unit
    # @param upgrade_unit_id 
    # @param [Hash] opts the optional parameters
    # @return [UpgradeUnit]
    def get_upgrade_unit(upgrade_unit_id, opts = {})
      data, _status_code, _headers = get_upgrade_unit_with_http_info(upgrade_unit_id, opts)
      data
    end

    # Get a specific upgrade unit
    # Get a specific upgrade unit
    # @param upgrade_unit_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradeUnit, Fixnum, Hash)>] UpgradeUnit data, response status code and response headers
    def get_upgrade_unit_with_http_info(upgrade_unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_unit ...'
      end
      # verify the required parameter 'upgrade_unit_id' is set
      if @api_client.config.client_side_validation && upgrade_unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'upgrade_unit_id' when calling ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_unit"
      end
      # resource path
      local_var_path = '/upgrade/upgrade-units/{upgrade-unit-id}'.sub('{' + 'upgrade-unit-id' + '}', upgrade_unit_id.to_s)

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
        :return_type => 'UpgradeUnit')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeUpgradeUnitsApi#get_upgrade_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get upgrade units aggregate-info
    # Get upgrade units aggregate-info
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_type Component type based on which upgrade units to be filtered
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :group_id Identifier of group based on which upgrade units to be filtered
    # @option opts [BOOLEAN] :has_errors Flag to indicate whether to return only upgrade units with errors (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :metadata Metadata about upgrade unit to filter on
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :selection_status Flag to indicate whether to return only selected, only deselected or both type of upgrade units (default to ALL)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :upgrade_unit_display_name Display name of upgrade unit
    # @return [UpgradeUnitAggregateInfoListResult]
    def get_upgrade_unit_aggregate_info(opts = {})
      data, _status_code, _headers = get_upgrade_unit_aggregate_info_with_http_info(opts)
      data
    end

    # Get upgrade units aggregate-info
    # Get upgrade units aggregate-info
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_type Component type based on which upgrade units to be filtered
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :group_id Identifier of group based on which upgrade units to be filtered
    # @option opts [BOOLEAN] :has_errors Flag to indicate whether to return only upgrade units with errors
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :metadata Metadata about upgrade unit to filter on
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :selection_status Flag to indicate whether to return only selected, only deselected or both type of upgrade units
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :upgrade_unit_display_name Display name of upgrade unit
    # @return [Array<(UpgradeUnitAggregateInfoListResult, Fixnum, Hash)>] UpgradeUnitAggregateInfoListResult data, response status code and response headers
    def get_upgrade_unit_aggregate_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_unit_aggregate_info ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_unit_aggregate_info, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_unit_aggregate_info, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'selection_status'] && !['SELECTED', 'DESELECTED', 'ALL'].include?(opts[:'selection_status'])
        fail ArgumentError, 'invalid value for "selection_status", must be one of SELECTED, DESELECTED, ALL'
      end
      # resource path
      local_var_path = '/upgrade/upgrade-units/aggregate-info'

      # query parameters
      query_params = {}
      query_params[:'component_type'] = opts[:'component_type'] if !opts[:'component_type'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'group_id'] = opts[:'group_id'] if !opts[:'group_id'].nil?
      query_params[:'has_errors'] = opts[:'has_errors'] if !opts[:'has_errors'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'metadata'] = opts[:'metadata'] if !opts[:'metadata'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'selection_status'] = opts[:'selection_status'] if !opts[:'selection_status'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'upgrade_unit_display_name'] = opts[:'upgrade_unit_display_name'] if !opts[:'upgrade_unit_display_name'].nil?

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
        :return_type => 'UpgradeUnitAggregateInfoListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeUpgradeUnitsApi#get_upgrade_unit_aggregate_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get upgrade units
    # Get upgrade units
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_type Component type based on which upgrade units to be filtered
    # @option opts [String] :current_version Current version of upgrade unit based on which upgrade units to be filtered
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :group_id UUID of group based on which upgrade units to be filtered
    # @option opts [BOOLEAN] :has_warnings Flag to indicate whether to return only upgrade units with warnings (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :metadata Metadata about upgrade unit to filter on
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :upgrade_unit_type Upgrade unit type based on which upgrade units to be filtered
    # @return [UpgradeUnitListResult]
    def get_upgrade_units(opts = {})
      data, _status_code, _headers = get_upgrade_units_with_http_info(opts)
      data
    end

    # Get upgrade units
    # Get upgrade units
    # @param [Hash] opts the optional parameters
    # @option opts [String] :component_type Component type based on which upgrade units to be filtered
    # @option opts [String] :current_version Current version of upgrade unit based on which upgrade units to be filtered
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :group_id UUID of group based on which upgrade units to be filtered
    # @option opts [BOOLEAN] :has_warnings Flag to indicate whether to return only upgrade units with warnings
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :metadata Metadata about upgrade unit to filter on
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :upgrade_unit_type Upgrade unit type based on which upgrade units to be filtered
    # @return [Array<(UpgradeUnitListResult, Fixnum, Hash)>] UpgradeUnitListResult data, response status code and response headers
    def get_upgrade_units_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_units ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_units, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_units, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/upgrade/upgrade-units'

      # query parameters
      query_params = {}
      query_params[:'component_type'] = opts[:'component_type'] if !opts[:'component_type'].nil?
      query_params[:'current_version'] = opts[:'current_version'] if !opts[:'current_version'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'group_id'] = opts[:'group_id'] if !opts[:'group_id'].nil?
      query_params[:'has_warnings'] = opts[:'has_warnings'] if !opts[:'has_warnings'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'metadata'] = opts[:'metadata'] if !opts[:'metadata'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'upgrade_unit_type'] = opts[:'upgrade_unit_type'] if !opts[:'upgrade_unit_type'].nil?

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
        :return_type => 'UpgradeUnitListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeUpgradeUnitsApi#get_upgrade_units\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get upgrade units stats
    # Get upgrade units stats
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [BOOLEAN] :sync Synchronize before returning upgrade unit stats (default to false)
    # @return [UpgradeUnitTypeStatsList]
    def get_upgrade_units_stats(opts = {})
      data, _status_code, _headers = get_upgrade_units_stats_with_http_info(opts)
      data
    end

    # Get upgrade units stats
    # Get upgrade units stats
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [BOOLEAN] :sync Synchronize before returning upgrade unit stats
    # @return [Array<(UpgradeUnitTypeStatsList, Fixnum, Hash)>] UpgradeUnitTypeStatsList data, response status code and response headers
    def get_upgrade_units_stats_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_units_stats ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_units_stats, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiUpgradeUpgradeUnitsApi.get_upgrade_units_stats, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/upgrade/upgrade-units-stats'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sync'] = opts[:'sync'] if !opts[:'sync'].nil?

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
        :return_type => 'UpgradeUnitTypeStatsList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiUpgradeUpgradeUnitsApi#get_upgrade_units_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
