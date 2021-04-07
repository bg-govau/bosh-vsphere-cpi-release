=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiFabricComputeCollectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a compute collection fabric template
    # Fabric templates are fabric configurations applied at the compute collection level. This configurations is used to decide what automated operations should be a run when a host membership changes.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [ComputeCollectionFabricTemplate]
    def create_compute_collection_fabric_template(body, opts = {})
      data, _status_code, _headers = create_compute_collection_fabric_template_with_http_info(body, opts)
      data
    end

    # Create a compute collection fabric template
    # Fabric templates are fabric configurations applied at the compute collection level. This configurations is used to decide what automated operations should be a run when a host membership changes.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeCollectionFabricTemplate, Integer, Hash)>] ComputeCollectionFabricTemplate data, response status code and response headers
    def create_compute_collection_fabric_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.create_compute_collection_fabric_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiFabricComputeCollectionsApi.create_compute_collection_fabric_template"
      end
      # resource path
      local_var_path = '/fabric/compute-collection-fabric-templates'

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

      return_type = opts[:return_type] || 'ComputeCollectionFabricTemplate' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#create_compute_collection_fabric_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes compute collection fabric template
    # Deletes compute collection fabric template for the given id
    # @param fabric_template_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_compute_collection_fabric_template(fabric_template_id, opts = {})
      delete_compute_collection_fabric_template_with_http_info(fabric_template_id, opts)
      nil
    end

    # Deletes compute collection fabric template
    # Deletes compute collection fabric template for the given id
    # @param fabric_template_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_compute_collection_fabric_template_with_http_info(fabric_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.delete_compute_collection_fabric_template ...'
      end
      # verify the required parameter 'fabric_template_id' is set
      if @api_client.config.client_side_validation && fabric_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'fabric_template_id' when calling ManagementPlaneApiFabricComputeCollectionsApi.delete_compute_collection_fabric_template"
      end
      # resource path
      local_var_path = '/fabric/compute-collection-fabric-templates/{fabric-template-id}'.sub('{' + 'fabric-template-id' + '}', fabric_template_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#delete_compute_collection_fabric_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get compute collection fabric template by id
    # Get compute collection fabric template for the given id
    # @param fabric_template_id 
    # @param [Hash] opts the optional parameters
    # @return [ComputeCollectionFabricTemplate]
    def get_compute_collection_fabric_template(fabric_template_id, opts = {})
      data, _status_code, _headers = get_compute_collection_fabric_template_with_http_info(fabric_template_id, opts)
      data
    end

    # Get compute collection fabric template by id
    # Get compute collection fabric template for the given id
    # @param fabric_template_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeCollectionFabricTemplate, Integer, Hash)>] ComputeCollectionFabricTemplate data, response status code and response headers
    def get_compute_collection_fabric_template_with_http_info(fabric_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.get_compute_collection_fabric_template ...'
      end
      # verify the required parameter 'fabric_template_id' is set
      if @api_client.config.client_side_validation && fabric_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'fabric_template_id' when calling ManagementPlaneApiFabricComputeCollectionsApi.get_compute_collection_fabric_template"
      end
      # resource path
      local_var_path = '/fabric/compute-collection-fabric-templates/{fabric-template-id}'.sub('{' + 'fabric-template-id' + '}', fabric_template_id.to_s)

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

      return_type = opts[:return_type] || 'ComputeCollectionFabricTemplate' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#get_compute_collection_fabric_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get status of member host nodes of the compute-collection. Only nsx prepared host nodes in the specified compute-collection are included in the response. cc-ext-id should be of type VC_Cluster.
    # Get status of member host nodes of the compute-collection. Only nsx prepared host nodes in the specified compute-collection are included in the response. cc-ext-id should be of type VC_Cluster.
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [HostNodeStatusListResult]
    def get_host_node_status_on_compute_collection(cc_ext_id, opts = {})
      data, _status_code, _headers = get_host_node_status_on_compute_collection_with_http_info(cc_ext_id, opts)
      data
    end

    # Get status of member host nodes of the compute-collection. Only nsx prepared host nodes in the specified compute-collection are included in the response. cc-ext-id should be of type VC_Cluster.
    # Get status of member host nodes of the compute-collection. Only nsx prepared host nodes in the specified compute-collection are included in the response. cc-ext-id should be of type VC_Cluster.
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(HostNodeStatusListResult, Integer, Hash)>] HostNodeStatusListResult data, response status code and response headers
    def get_host_node_status_on_compute_collection_with_http_info(cc_ext_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.get_host_node_status_on_compute_collection ...'
      end
      # verify the required parameter 'cc_ext_id' is set
      if @api_client.config.client_side_validation && cc_ext_id.nil?
        fail ArgumentError, "Missing the required parameter 'cc_ext_id' when calling ManagementPlaneApiFabricComputeCollectionsApi.get_host_node_status_on_compute_collection"
      end
      # resource path
      local_var_path = '/fabric/compute-collections/{cc-ext-id}/member-status'.sub('{' + 'cc-ext-id' + '}', cc_ext_id.to_s)

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

      return_type = opts[:return_type] || 'HostNodeStatusListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#get_host_node_status_on_compute_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get compute collection fabric templates
    # Returns compute collection fabric templates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :compute_collection_id Compute collection id
    # @return [ComputeCollectionFabricTemplateListResult]
    def list_compute_collection_fabric_templates(opts = {})
      data, _status_code, _headers = list_compute_collection_fabric_templates_with_http_info(opts)
      data
    end

    # Get compute collection fabric templates
    # Returns compute collection fabric templates
    # @param [Hash] opts the optional parameters
    # @option opts [String] :compute_collection_id Compute collection id
    # @return [Array<(ComputeCollectionFabricTemplateListResult, Integer, Hash)>] ComputeCollectionFabricTemplateListResult data, response status code and response headers
    def list_compute_collection_fabric_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.list_compute_collection_fabric_templates ...'
      end
      # resource path
      local_var_path = '/fabric/compute-collection-fabric-templates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'compute_collection_id'] = opts[:'compute_collection_id'] if !opts[:'compute_collection_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ComputeCollectionFabricTemplateListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#list_compute_collection_fabric_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List the Physical Network Interface for all discovered nodes
    # Returns list of physical network interfaces for all discovered nodes in compute collection. Interface information includes PNIC name, hostswitch name it's attached to(if any) and MAC address. 
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [ComputeCollectionNetworkInterfacesListResult]
    def list_compute_collection_physical_network_interfaces(cc_ext_id, opts = {})
      data, _status_code, _headers = list_compute_collection_physical_network_interfaces_with_http_info(cc_ext_id, opts)
      data
    end

    # List the Physical Network Interface for all discovered nodes
    # Returns list of physical network interfaces for all discovered nodes in compute collection. Interface information includes PNIC name, hostswitch name it&#x27;s attached to(if any) and MAC address. 
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeCollectionNetworkInterfacesListResult, Integer, Hash)>] ComputeCollectionNetworkInterfacesListResult data, response status code and response headers
    def list_compute_collection_physical_network_interfaces_with_http_info(cc_ext_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.list_compute_collection_physical_network_interfaces ...'
      end
      # verify the required parameter 'cc_ext_id' is set
      if @api_client.config.client_side_validation && cc_ext_id.nil?
        fail ArgumentError, "Missing the required parameter 'cc_ext_id' when calling ManagementPlaneApiFabricComputeCollectionsApi.list_compute_collection_physical_network_interfaces"
      end
      # resource path
      local_var_path = '/fabric/compute-collections/{cc-ext-id}/network/physical-interfaces'.sub('{' + 'cc-ext-id' + '}', cc_ext_id.to_s)

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

      return_type = opts[:return_type] || 'ComputeCollectionNetworkInterfacesListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#list_compute_collection_physical_network_interfaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the List of Compute Collections
    # Returns information about all compute collections.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cm_local_id Local Id of the compute collection in the Compute Manager
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :discovered_node_id Id of the discovered node which belongs to this Compute Collection 
    # @option opts [String] :display_name Name of the ComputeCollection in source compute manager
    # @option opts [String] :external_id External ID of the ComputeCollection in the source Compute manager, e.g. mo-ref in VC 
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :node_id Id of the fabric node created from a discovered node belonging to this Compute Collection 
    # @option opts [String] :origin_id Id of the compute manager from where this Compute Collection was discovered
    # @option opts [String] :origin_type ComputeCollection type like VC_Cluster. Here the Compute Manager type prefix would help in differentiating similar named Compute Collection types from different Compute Managers 
    # @option opts [String] :owner_id Id of the owner of compute collection in the Compute Manager
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ComputeCollectionListResult]
    def list_compute_collections(opts = {})
      data, _status_code, _headers = list_compute_collections_with_http_info(opts)
      data
    end

    # Return the List of Compute Collections
    # Returns information about all compute collections.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cm_local_id Local Id of the compute collection in the Compute Manager
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :discovered_node_id Id of the discovered node which belongs to this Compute Collection 
    # @option opts [String] :display_name Name of the ComputeCollection in source compute manager
    # @option opts [String] :external_id External ID of the ComputeCollection in the source Compute manager, e.g. mo-ref in VC 
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :node_id Id of the fabric node created from a discovered node belonging to this Compute Collection 
    # @option opts [String] :origin_id Id of the compute manager from where this Compute Collection was discovered
    # @option opts [String] :origin_type ComputeCollection type like VC_Cluster. Here the Compute Manager type prefix would help in differentiating similar named Compute Collection types from different Compute Managers 
    # @option opts [String] :owner_id Id of the owner of compute collection in the Compute Manager
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ComputeCollectionListResult, Integer, Hash)>] ComputeCollectionListResult data, response status code and response headers
    def list_compute_collections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.list_compute_collections ...'
      end
      # resource path
      local_var_path = '/fabric/compute-collections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cm_local_id'] = opts[:'cm_local_id'] if !opts[:'cm_local_id'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'discovered_node_id'] = opts[:'discovered_node_id'] if !opts[:'discovered_node_id'].nil?
      query_params[:'display_name'] = opts[:'display_name'] if !opts[:'display_name'].nil?
      query_params[:'external_id'] = opts[:'external_id'] if !opts[:'external_id'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'node_id'] = opts[:'node_id'] if !opts[:'node_id'].nil?
      query_params[:'origin_id'] = opts[:'origin_id'] if !opts[:'origin_id'].nil?
      query_params[:'origin_type'] = opts[:'origin_type'] if !opts[:'origin_type'].nil?
      query_params[:'owner_id'] = opts[:'owner_id'] if !opts[:'owner_id'].nil?
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

      return_type = opts[:return_type] || 'ComputeCollectionListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#list_compute_collections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Perform action specific to NSX on the compute-collection. cc-ext-id should be of type VC_Cluster.
    # Perform action specific to NSX on the compute-collection. cc-ext-id should be of type VC_Cluster.
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :action Supported actions on compute-collection
    # @return [nil]
    def perform_action_on_compute_collection(cc_ext_id, opts = {})
      perform_action_on_compute_collection_with_http_info(cc_ext_id, opts)
      nil
    end

    # Perform action specific to NSX on the compute-collection. cc-ext-id should be of type VC_Cluster.
    # Perform action specific to NSX on the compute-collection. cc-ext-id should be of type VC_Cluster.
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :action Supported actions on compute-collection
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def perform_action_on_compute_collection_with_http_info(cc_ext_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.perform_action_on_compute_collection ...'
      end
      # verify the required parameter 'cc_ext_id' is set
      if @api_client.config.client_side_validation && cc_ext_id.nil?
        fail ArgumentError, "Missing the required parameter 'cc_ext_id' when calling ManagementPlaneApiFabricComputeCollectionsApi.perform_action_on_compute_collection"
      end
      if @api_client.config.client_side_validation && opts[:'action'] && !['remove_nsx'].include?(opts[:'action'])
        fail ArgumentError, 'invalid value for "action", must be one of remove_nsx'
      end
      # resource path
      local_var_path = '/fabric/compute-collections/{cc-ext-id}'.sub('{' + 'cc-ext-id' + '}', cc_ext_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'action'] = opts[:'action'] if !opts[:'action'].nil?

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#perform_action_on_compute_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return Compute Collection Information
    # Returns information about a specific compute collection.
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [ComputeCollection]
    def read_compute_collection(cc_ext_id, opts = {})
      data, _status_code, _headers = read_compute_collection_with_http_info(cc_ext_id, opts)
      data
    end

    # Return Compute Collection Information
    # Returns information about a specific compute collection.
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeCollection, Integer, Hash)>] ComputeCollection data, response status code and response headers
    def read_compute_collection_with_http_info(cc_ext_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.read_compute_collection ...'
      end
      # verify the required parameter 'cc_ext_id' is set
      if @api_client.config.client_side_validation && cc_ext_id.nil?
        fail ArgumentError, "Missing the required parameter 'cc_ext_id' when calling ManagementPlaneApiFabricComputeCollectionsApi.read_compute_collection"
      end
      # resource path
      local_var_path = '/fabric/compute-collections/{cc-ext-id}'.sub('{' + 'cc-ext-id' + '}', cc_ext_id.to_s)

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

      return_type = opts[:return_type] || 'ComputeCollection' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#read_compute_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates compute collection fabric template
    # Updates compute collection fabric template for the given id
    # @param body 
    # @param fabric_template_id 
    # @param [Hash] opts the optional parameters
    # @return [ComputeCollectionFabricTemplate]
    def update_compute_collection_fabric_template(body, fabric_template_id, opts = {})
      data, _status_code, _headers = update_compute_collection_fabric_template_with_http_info(body, fabric_template_id, opts)
      data
    end

    # Updates compute collection fabric template
    # Updates compute collection fabric template for the given id
    # @param body 
    # @param fabric_template_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ComputeCollectionFabricTemplate, Integer, Hash)>] ComputeCollectionFabricTemplate data, response status code and response headers
    def update_compute_collection_fabric_template_with_http_info(body, fabric_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricComputeCollectionsApi.update_compute_collection_fabric_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiFabricComputeCollectionsApi.update_compute_collection_fabric_template"
      end
      # verify the required parameter 'fabric_template_id' is set
      if @api_client.config.client_side_validation && fabric_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'fabric_template_id' when calling ManagementPlaneApiFabricComputeCollectionsApi.update_compute_collection_fabric_template"
      end
      # resource path
      local_var_path = '/fabric/compute-collection-fabric-templates/{fabric-template-id}'.sub('{' + 'fabric-template-id' + '}', fabric_template_id.to_s)

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

      return_type = opts[:return_type] || 'ComputeCollectionFabricTemplate' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricComputeCollectionsApi#update_compute_collection_fabric_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
