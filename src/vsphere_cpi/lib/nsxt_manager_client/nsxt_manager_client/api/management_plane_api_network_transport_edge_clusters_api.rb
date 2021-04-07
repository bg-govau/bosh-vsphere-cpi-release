=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiNetworkTransportEdgeClustersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Edge Cluster
    # Creates a new edge cluster. It only supports homogeneous members. The TransportNodes backed by EdgeNode are only allowed in cluster members. DeploymentType (VIRTUAL_MACHINE|PHYSICAL_MACHINE) of these EdgeNodes is recommended to be the same. EdgeCluster supports members of different deployment types. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [EdgeCluster]
    def create_edge_cluster(body, opts = {})
      data, _status_code, _headers = create_edge_cluster_with_http_info(body, opts)
      data
    end

    # Create Edge Cluster
    # Creates a new edge cluster. It only supports homogeneous members. The TransportNodes backed by EdgeNode are only allowed in cluster members. DeploymentType (VIRTUAL_MACHINE|PHYSICAL_MACHINE) of these EdgeNodes is recommended to be the same. EdgeCluster supports members of different deployment types. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdgeCluster, Integer, Hash)>] EdgeCluster data, response status code and response headers
    def create_edge_cluster_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.create_edge_cluster ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.create_edge_cluster"
      end
      # resource path
      local_var_path = '/edge-clusters'

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

      return_type = opts[:return_type] || 'EdgeCluster' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#create_edge_cluster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Edge Cluster
    # Deletes the specified edge cluster.
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_edge_cluster(edge_cluster_id, opts = {})
      delete_edge_cluster_with_http_info(edge_cluster_id, opts)
      nil
    end

    # Delete Edge Cluster
    # Deletes the specified edge cluster.
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_edge_cluster_with_http_info(edge_cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.delete_edge_cluster ...'
      end
      # verify the required parameter 'edge_cluster_id' is set
      if @api_client.config.client_side_validation && edge_cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'edge_cluster_id' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.delete_edge_cluster"
      end
      # resource path
      local_var_path = '/edge-clusters/{edge-cluster-id}'.sub('{' + 'edge-cluster-id' + '}', edge_cluster_id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#delete_edge_cluster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the Allocation details of an edge cluster
    # Returns the allocation details of cluster and its members. Lists the edge node members, active and standby services of each node, utilization details of configured sub-pools. These allocation details can be monitored by customers to trigger migration of certain service contexts to different edge nodes, to balance the utilization of edge node resources. 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [EdgeClusterAllocationStatus]
    def get_edge_cluster_allocation_status(edge_cluster_id, opts = {})
      data, _status_code, _headers = get_edge_cluster_allocation_status_with_http_info(edge_cluster_id, opts)
      data
    end

    # Get the Allocation details of an edge cluster
    # Returns the allocation details of cluster and its members. Lists the edge node members, active and standby services of each node, utilization details of configured sub-pools. These allocation details can be monitored by customers to trigger migration of certain service contexts to different edge nodes, to balance the utilization of edge node resources. 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdgeClusterAllocationStatus, Integer, Hash)>] EdgeClusterAllocationStatus data, response status code and response headers
    def get_edge_cluster_allocation_status_with_http_info(edge_cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.get_edge_cluster_allocation_status ...'
      end
      # verify the required parameter 'edge_cluster_id' is set
      if @api_client.config.client_side_validation && edge_cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'edge_cluster_id' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.get_edge_cluster_allocation_status"
      end
      # resource path
      local_var_path = '/edge-clusters/{edge-cluster-id}/allocation-status'.sub('{' + 'edge-cluster-id' + '}', edge_cluster_id.to_s)

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

      return_type = opts[:return_type] || 'EdgeClusterAllocationStatus' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#get_edge_cluster_allocation_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the Realized State of a Edge Cluster
    # Return realized state information of a edge cluster. Any configuration update that affects the edge cluster can use this API to get its realized state by passing a request_id returned by the configuration change operation. e.g. Update configuration of edge cluster. 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :barrier_id 
    # @option opts [String] :request_id Realization request ID
    # @return [EdgeClusterState]
    def get_edge_cluster_state(edge_cluster_id, opts = {})
      data, _status_code, _headers = get_edge_cluster_state_with_http_info(edge_cluster_id, opts)
      data
    end

    # Get the Realized State of a Edge Cluster
    # Return realized state information of a edge cluster. Any configuration update that affects the edge cluster can use this API to get its realized state by passing a request_id returned by the configuration change operation. e.g. Update configuration of edge cluster. 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :barrier_id 
    # @option opts [String] :request_id Realization request ID
    # @return [Array<(EdgeClusterState, Integer, Hash)>] EdgeClusterState data, response status code and response headers
    def get_edge_cluster_state_with_http_info(edge_cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.get_edge_cluster_state ...'
      end
      # verify the required parameter 'edge_cluster_id' is set
      if @api_client.config.client_side_validation && edge_cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'edge_cluster_id' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.get_edge_cluster_state"
      end
      # resource path
      local_var_path = '/edge-clusters/{edge-cluster-id}/state'.sub('{' + 'edge-cluster-id' + '}', edge_cluster_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'barrier_id'] = opts[:'barrier_id'] if !opts[:'barrier_id'].nil?
      query_params[:'request_id'] = opts[:'request_id'] if !opts[:'request_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'EdgeClusterState' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#get_edge_cluster_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the status for the Edge cluster of the given id
    # Returns the aggregated status for the Edge cluster along with status of all edge nodes in the cluster. Query parameter \"source=realtime\" is the only supported source. 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [EdgeClusterStatus]
    def get_edge_cluster_status(edge_cluster_id, opts = {})
      data, _status_code, _headers = get_edge_cluster_status_with_http_info(edge_cluster_id, opts)
      data
    end

    # Get the status for the Edge cluster of the given id
    # Returns the aggregated status for the Edge cluster along with status of all edge nodes in the cluster. Query parameter \&quot;source&#x3D;realtime\&quot; is the only supported source. 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [Array<(EdgeClusterStatus, Integer, Hash)>] EdgeClusterStatus data, response status code and response headers
    def get_edge_cluster_status_with_http_info(edge_cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.get_edge_cluster_status ...'
      end
      # verify the required parameter 'edge_cluster_id' is set
      if @api_client.config.client_side_validation && edge_cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'edge_cluster_id' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.get_edge_cluster_status"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/edge-clusters/{edge-cluster-id}/status'.sub('{' + 'edge-cluster-id' + '}', edge_cluster_id.to_s)

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

      return_type = opts[:return_type] || 'EdgeClusterStatus' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#get_edge_cluster_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Edge Clusters
    # Returns information about the configured edge clusters, which enable you to group together transport nodes of the type EdgeNode and apply fabric profiles to all members of the edge cluster. Each edge node can participate in only one edge cluster. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [EdgeClusterListResult]
    def list_edge_clusters(opts = {})
      data, _status_code, _headers = list_edge_clusters_with_http_info(opts)
      data
    end

    # List Edge Clusters
    # Returns information about the configured edge clusters, which enable you to group together transport nodes of the type EdgeNode and apply fabric profiles to all members of the edge cluster. Each edge node can participate in only one edge cluster. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(EdgeClusterListResult, Integer, Hash)>] EdgeClusterListResult data, response status code and response headers
    def list_edge_clusters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.list_edge_clusters ...'
      end
      # resource path
      local_var_path = '/edge-clusters'

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

      return_type = opts[:return_type] || 'EdgeClusterListResult' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#list_edge_clusters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read Edge Cluster
    # Returns information about the specified edge cluster.
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [EdgeCluster]
    def read_edge_cluster(edge_cluster_id, opts = {})
      data, _status_code, _headers = read_edge_cluster_with_http_info(edge_cluster_id, opts)
      data
    end

    # Read Edge Cluster
    # Returns information about the specified edge cluster.
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdgeCluster, Integer, Hash)>] EdgeCluster data, response status code and response headers
    def read_edge_cluster_with_http_info(edge_cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.read_edge_cluster ...'
      end
      # verify the required parameter 'edge_cluster_id' is set
      if @api_client.config.client_side_validation && edge_cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'edge_cluster_id' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.read_edge_cluster"
      end
      # resource path
      local_var_path = '/edge-clusters/{edge-cluster-id}'.sub('{' + 'edge-cluster-id' + '}', edge_cluster_id.to_s)

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

      return_type = opts[:return_type] || 'EdgeCluster' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#read_edge_cluster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Replace the transport node in the specified member of the edge-cluster
    # Replace the transport node in the specified member of the edge-cluster. This is a disruptive action. This will move all the LogicalRouterPorts(uplink and routerLink) host on the old transport_node to the new transport_node. The transportNode cannot be present in another member of any edgeClusters. 
    # @param body 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [EdgeCluster]
    def replace_edge_cluster_member_transport_node_replace_transport_node(body, edge_cluster_id, opts = {})
      data, _status_code, _headers = replace_edge_cluster_member_transport_node_replace_transport_node_with_http_info(body, edge_cluster_id, opts)
      data
    end

    # Replace the transport node in the specified member of the edge-cluster
    # Replace the transport node in the specified member of the edge-cluster. This is a disruptive action. This will move all the LogicalRouterPorts(uplink and routerLink) host on the old transport_node to the new transport_node. The transportNode cannot be present in another member of any edgeClusters. 
    # @param body 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdgeCluster, Integer, Hash)>] EdgeCluster data, response status code and response headers
    def replace_edge_cluster_member_transport_node_replace_transport_node_with_http_info(body, edge_cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.replace_edge_cluster_member_transport_node_replace_transport_node ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.replace_edge_cluster_member_transport_node_replace_transport_node"
      end
      # verify the required parameter 'edge_cluster_id' is set
      if @api_client.config.client_side_validation && edge_cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'edge_cluster_id' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.replace_edge_cluster_member_transport_node_replace_transport_node"
      end
      # resource path
      local_var_path = '/edge-clusters/{edge-cluster-id}?action=replace_transport_node'.sub('{' + 'edge-cluster-id' + '}', edge_cluster_id.to_s)

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

      return_type = opts[:return_type] || 'EdgeCluster' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#replace_edge_cluster_member_transport_node_replace_transport_node\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Edge Cluster
    # Modifies the specified edge cluster. Modifiable parameters include the description, display_name, transport-node-id. If the optional fabric_profile_binding is included, resource_type and profile_id are required. User should do a GET on the edge-cluster and obtain the payload and retain the member_index of the existing members as returning in the GET output. For new member additions, the member_index cannot be defined by the user, user can read the system allocated index to the new member in the output of this API call or by doing a GET call. User cannot use this PUT api to replace the transport_node of an existing member because this is a disruption action, we have exposed a explicit API for doing so, refer to \"ReplaceEdgeClusterMemberTransportNode\" EdgeCluster only supports homogeneous members. The TransportNodes backed by EdgeNode are only allowed in cluster members. DeploymentType (VIRTUAL_MACHINE|PHYSICAL_MACHINE) of these EdgeNodes is recommended to be the same. EdgeCluster supports members of different deployment types. 
    # @param body 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [EdgeCluster]
    def update_edge_cluster(body, edge_cluster_id, opts = {})
      data, _status_code, _headers = update_edge_cluster_with_http_info(body, edge_cluster_id, opts)
      data
    end

    # Update Edge Cluster
    # Modifies the specified edge cluster. Modifiable parameters include the description, display_name, transport-node-id. If the optional fabric_profile_binding is included, resource_type and profile_id are required. User should do a GET on the edge-cluster and obtain the payload and retain the member_index of the existing members as returning in the GET output. For new member additions, the member_index cannot be defined by the user, user can read the system allocated index to the new member in the output of this API call or by doing a GET call. User cannot use this PUT api to replace the transport_node of an existing member because this is a disruption action, we have exposed a explicit API for doing so, refer to \&quot;ReplaceEdgeClusterMemberTransportNode\&quot; EdgeCluster only supports homogeneous members. The TransportNodes backed by EdgeNode are only allowed in cluster members. DeploymentType (VIRTUAL_MACHINE|PHYSICAL_MACHINE) of these EdgeNodes is recommended to be the same. EdgeCluster supports members of different deployment types. 
    # @param body 
    # @param edge_cluster_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdgeCluster, Integer, Hash)>] EdgeCluster data, response status code and response headers
    def update_edge_cluster_with_http_info(body, edge_cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNetworkTransportEdgeClustersApi.update_edge_cluster ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.update_edge_cluster"
      end
      # verify the required parameter 'edge_cluster_id' is set
      if @api_client.config.client_side_validation && edge_cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'edge_cluster_id' when calling ManagementPlaneApiNetworkTransportEdgeClustersApi.update_edge_cluster"
      end
      # resource path
      local_var_path = '/edge-clusters/{edge-cluster-id}'.sub('{' + 'edge-cluster-id' + '}', edge_cluster_id.to_s)

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

      return_type = opts[:return_type] || 'EdgeCluster' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNetworkTransportEdgeClustersApi#update_edge_cluster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
