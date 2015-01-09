class API::V1::V1Controller < API::APIController
  respond_to :json
  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
    ActiveRecord::Base.logger.info('cors_set_access_control_headers')
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end
end
