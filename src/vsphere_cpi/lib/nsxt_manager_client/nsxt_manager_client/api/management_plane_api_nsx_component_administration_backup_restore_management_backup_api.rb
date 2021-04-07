=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.25
=end

module NSXT
  class ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Configure backup
    # Configure file server and timers for automated backup. If secret fields are omitted (password, passphrase) then use the previously set value. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [BackupConfiguration]
    def configure_backup_config(body, opts = {})
      data, _status_code, _headers = configure_backup_config_with_http_info(body, opts)
      data
    end

    # Configure backup
    # Configure file server and timers for automated backup. If secret fields are omitted (password, passphrase) then use the previously set value. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BackupConfiguration, Integer, Hash)>] BackupConfiguration data, response status code and response headers
    def configure_backup_config_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.configure_backup_config ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.configure_backup_config"
      end
      # resource path
      local_var_path = '/cluster/backups/config'

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

      return_type = opts[:return_type] || 'BackupConfiguration' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi#configure_backup_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get backup configuration
    # Get a configuration of a file server and timers for automated backup. Fields that contain secrets (password, passphrase) are not returned. 
    # @param [Hash] opts the optional parameters
    # @return [BackupConfiguration]
    def get_backup_config(opts = {})
      data, _status_code, _headers = get_backup_config_with_http_info(opts)
      data
    end

    # Get backup configuration
    # Get a configuration of a file server and timers for automated backup. Fields that contain secrets (password, passphrase) are not returned. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BackupConfiguration, Integer, Hash)>] BackupConfiguration data, response status code and response headers
    def get_backup_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.get_backup_config ...'
      end
      # resource path
      local_var_path = '/cluster/backups/config'

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

      return_type = opts[:return_type] || 'BackupConfiguration' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi#get_backup_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get backup history
    # Get history of previous backup operations 
    # @param [Hash] opts the optional parameters
    # @return [BackupOperationHistory]
    def get_backup_history(opts = {})
      data, _status_code, _headers = get_backup_history_with_http_info(opts)
      data
    end

    # Get backup history
    # Get history of previous backup operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BackupOperationHistory, Integer, Hash)>] BackupOperationHistory data, response status code and response headers
    def get_backup_history_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.get_backup_history ...'
      end
      # resource path
      local_var_path = '/cluster/backups/history'

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

      return_type = opts[:return_type] || 'BackupOperationHistory' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi#get_backup_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get backup status
    # Get status of active backup operations 
    # @param [Hash] opts the optional parameters
    # @return [CurrentBackupOperationStatus]
    def get_backup_status(opts = {})
      data, _status_code, _headers = get_backup_status_with_http_info(opts)
      data
    end

    # Get backup status
    # Get status of active backup operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CurrentBackupOperationStatus, Integer, Hash)>] CurrentBackupOperationStatus data, response status code and response headers
    def get_backup_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.get_backup_status ...'
      end
      # resource path
      local_var_path = '/cluster/backups/status'

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

      return_type = opts[:return_type] || 'CurrentBackupOperationStatus' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi#get_backup_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get ssh fingerprint of remote(backup) server
    # Get SHA256 fingerprint of ECDSA key of remote server. The caller should independently verify that the key is trusted. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [RemoteServerFingerprint]
    def get_ssh_fingerprint_of_server_retrieve_ssh_fingerprint(body, opts = {})
      data, _status_code, _headers = get_ssh_fingerprint_of_server_retrieve_ssh_fingerprint_with_http_info(body, opts)
      data
    end

    # Get ssh fingerprint of remote(backup) server
    # Get SHA256 fingerprint of ECDSA key of remote server. The caller should independently verify that the key is trusted. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoteServerFingerprint, Integer, Hash)>] RemoteServerFingerprint data, response status code and response headers
    def get_ssh_fingerprint_of_server_retrieve_ssh_fingerprint_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.get_ssh_fingerprint_of_server_retrieve_ssh_fingerprint ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.get_ssh_fingerprint_of_server_retrieve_ssh_fingerprint"
      end
      # resource path
      local_var_path = '/cluster/backups?action=retrieve_ssh_fingerprint'

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

      return_type = opts[:return_type] || 'RemoteServerFingerprint' 

      auth_names = opts[:auth_names] || ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi#get_ssh_fingerprint_of_server_retrieve_ssh_fingerprint\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Request one-time backup
    # Request one-time backup. The backup will be uploaded using the same server configuration as for automatic backup. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def request_onetime_backup_backup_to_remote(opts = {})
      request_onetime_backup_backup_to_remote_with_http_info(opts)
      nil
    end

    # Request one-time backup
    # Request one-time backup. The backup will be uploaded using the same server configuration as for automatic backup. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def request_onetime_backup_backup_to_remote_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.request_onetime_backup_backup_to_remote ...'
      end
      # resource path
      local_var_path = '/cluster?action=backup_to_remote'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi#request_onetime_backup_backup_to_remote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Request one-time inventory summary.
    # Request one-time inventory summary. The backup will be uploaded using the same server configuration as for an automatic backup. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def request_onetime_inventory_summary_summarize_inventory_to_remote(opts = {})
      request_onetime_inventory_summary_summarize_inventory_to_remote_with_http_info(opts)
      nil
    end

    # Request one-time inventory summary.
    # Request one-time inventory summary. The backup will be uploaded using the same server configuration as for an automatic backup. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def request_onetime_inventory_summary_summarize_inventory_to_remote_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi.request_onetime_inventory_summary_summarize_inventory_to_remote ...'
      end
      # resource path
      local_var_path = '/cluster?action=summarize_inventory_to_remote'

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiNsxComponentAdministrationBackupRestoreManagementBackupApi#request_onetime_inventory_summary_summarize_inventory_to_remote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
