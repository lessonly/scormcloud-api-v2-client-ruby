=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module RusticiSoftwareCloudV2
  class LearnerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Deletes all of the information associated with a learner in an application, by learner id. 
    # Deletes all of the information associated with a learner in an application, by learner id. This is meant for use with complying with GDPR requests from learners. 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param user_email The email of the user initiating this request on behalf of the learner being deleted. This must be a valid primary email address for a SCORM Cloud realm which this application is in.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_all_learner_data(learner_id, user_email, opts = {})
      delete_all_learner_data_with_http_info(learner_id, user_email, opts)
      return nil
    end

    # Deletes all of the information associated with a learner in an application, by learner id. 
    # Deletes all of the information associated with a learner in an application, by learner id. This is meant for use with complying with GDPR requests from learners. 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param user_email The email of the user initiating this request on behalf of the learner being deleted. This must be a valid primary email address for a SCORM Cloud realm which this application is in.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_all_learner_data_with_http_info(learner_id, user_email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LearnerApi.delete_all_learner_data ..."
      end
      # verify the required parameter 'learner_id' is set
      fail ArgumentError, "Missing the required parameter 'learner_id' when calling LearnerApi.delete_all_learner_data" if learner_id.nil?
      # verify the required parameter 'user_email' is set
      fail ArgumentError, "Missing the required parameter 'user_email' when calling LearnerApi.delete_all_learner_data" if user_email.nil?
      # resource path
      local_var_path = "/learner/{learnerId}/delete-information".sub('{format}','json').sub('{' + 'learnerId' + '}', learner_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'userEmail'] = user_email

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
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LearnerApi#delete_all_learner_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the tags for this learner 
    # Delete the tags for this learner 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param tags 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_learner_tags(learner_id, tags, opts = {})
      delete_learner_tags_with_http_info(learner_id, tags, opts)
      return nil
    end

    # Delete the tags for this learner 
    # Delete the tags for this learner 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param tags 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_learner_tags_with_http_info(learner_id, tags, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LearnerApi.delete_learner_tags ..."
      end
      # verify the required parameter 'learner_id' is set
      fail ArgumentError, "Missing the required parameter 'learner_id' when calling LearnerApi.delete_learner_tags" if learner_id.nil?
      # verify the required parameter 'tags' is set
      fail ArgumentError, "Missing the required parameter 'tags' when calling LearnerApi.delete_learner_tags" if tags.nil?
      # resource path
      local_var_path = "/learner/{learnerId}/tags".sub('{format}','json').sub('{' + 'learnerId' + '}', learner_id.to_s)

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
      post_body = @api_client.object_to_http_body(tags)
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LearnerApi#delete_learner_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the tags for this learner 
    # Get the tags for this learner 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param [Hash] opts the optional parameters
    # @return [TagListSchema]
    def get_learner_tags(learner_id, opts = {})
      data, _status_code, _headers = get_learner_tags_with_http_info(learner_id, opts)
      return data
    end

    # Get the tags for this learner 
    # Get the tags for this learner 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param [Hash] opts the optional parameters
    # @return [Array<(TagListSchema, Fixnum, Hash)>] TagListSchema data, response status code and response headers
    def get_learner_tags_with_http_info(learner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LearnerApi.get_learner_tags ..."
      end
      # verify the required parameter 'learner_id' is set
      fail ArgumentError, "Missing the required parameter 'learner_id' when calling LearnerApi.get_learner_tags" if learner_id.nil?
      # resource path
      local_var_path = "/learner/{learnerId}/tags".sub('{format}','json').sub('{' + 'learnerId' + '}', learner_id.to_s)

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
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TagListSchema')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LearnerApi#get_learner_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the tags for this learner 
    # Set the tags for this learner 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param tags 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def put_learner_tags(learner_id, tags, opts = {})
      put_learner_tags_with_http_info(learner_id, tags, opts)
      return nil
    end

    # Set the tags for this learner 
    # Set the tags for this learner 
    # @param learner_id The id of the learner for which to remove all data from an application
    # @param tags 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_learner_tags_with_http_info(learner_id, tags, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LearnerApi.put_learner_tags ..."
      end
      # verify the required parameter 'learner_id' is set
      fail ArgumentError, "Missing the required parameter 'learner_id' when calling LearnerApi.put_learner_tags" if learner_id.nil?
      # verify the required parameter 'tags' is set
      fail ArgumentError, "Missing the required parameter 'tags' when calling LearnerApi.put_learner_tags" if tags.nil?
      # resource path
      local_var_path = "/learner/{learnerId}/tags".sub('{format}','json').sub('{' + 'learnerId' + '}', learner_id.to_s)

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
      post_body = @api_client.object_to_http_body(tags)
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LearnerApi#put_learner_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Sets all of the provided tags on all of the provided learners
    # Sets all of the provided tags on all of the provided learners 
    # @param batch Object representing an array of ids to apply an array of tags to.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def put_learner_tags_batch(batch, opts = {})
      put_learner_tags_batch_with_http_info(batch, opts)
      return nil
    end

    # Sets all of the provided tags on all of the provided learners
    # Sets all of the provided tags on all of the provided learners 
    # @param batch Object representing an array of ids to apply an array of tags to.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def put_learner_tags_batch_with_http_info(batch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LearnerApi.put_learner_tags_batch ..."
      end
      # verify the required parameter 'batch' is set
      fail ArgumentError, "Missing the required parameter 'batch' when calling LearnerApi.put_learner_tags_batch" if batch.nil?
      # resource path
      local_var_path = "/learner/tags".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(batch)
      auth_names = ['APP_NORMAL', 'OAUTH']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LearnerApi#put_learner_tags_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end