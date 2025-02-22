=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.ynab.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module YNAB
  class BudgetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Single budget
    # Returns a single budget with all related entities.  This resource is effectively a full budget export.
    # @param budget_id The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_knowledge_of_server The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included.
    # @return [BudgetDetailResponse]
    def get_budget_by_id(budget_id, opts = {})
      data, _status_code, _headers = get_budget_by_id_with_http_info(budget_id, opts)
      data
    end

    # Single budget
    # Returns a single budget with all related entities.  This resource is effectively a full budget export.
    # @param budget_id The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :last_knowledge_of_server The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included.
    # @return [Array<(BudgetDetailResponse, Fixnum, Hash)>] BudgetDetailResponse data, response status code and response headers
    def get_budget_by_id_with_http_info(budget_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BudgetsApi.get_budget_by_id ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling BudgetsApi.get_budget_by_id"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'last_knowledge_of_server'] = opts[:'last_knowledge_of_server'] if !opts[:'last_knowledge_of_server'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BudgetDetailResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BudgetsApi#get_budget_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Budget Settings
    # Returns settings for a budget
    # @param budget_id The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget).
    # @param [Hash] opts the optional parameters
    # @return [BudgetSettingsResponse]
    def get_budget_settings_by_id(budget_id, opts = {})
      data, _status_code, _headers = get_budget_settings_by_id_with_http_info(budget_id, opts)
      data
    end

    # Budget Settings
    # Returns settings for a budget
    # @param budget_id The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget).
    # @param [Hash] opts the optional parameters
    # @return [Array<(BudgetSettingsResponse, Fixnum, Hash)>] BudgetSettingsResponse data, response status code and response headers
    def get_budget_settings_by_id_with_http_info(budget_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BudgetsApi.get_budget_settings_by_id ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling BudgetsApi.get_budget_settings_by_id"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/settings'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BudgetSettingsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BudgetsApi#get_budget_settings_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List budgets
    # Returns budgets list with summary information
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_accounts Whether to include the list of budget accounts
    # @return [BudgetSummaryResponse]
    def get_budgets(opts = {})
      data, _status_code, _headers = get_budgets_with_http_info(opts)
      data
    end

    # List budgets
    # Returns budgets list with summary information
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_accounts Whether to include the list of budget accounts
    # @return [Array<(BudgetSummaryResponse, Fixnum, Hash)>] BudgetSummaryResponse data, response status code and response headers
    def get_budgets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BudgetsApi.get_budgets ...'
      end
      # resource path
      local_var_path = '/budgets'

      # query parameters
      query_params = {}
      query_params[:'include_accounts'] = opts[:'include_accounts'] if !opts[:'include_accounts'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BudgetSummaryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BudgetsApi#get_budgets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
