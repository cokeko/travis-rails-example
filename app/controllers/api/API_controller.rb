class API::APIController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def self.cors_allowed_actions
    @cors_allowed_actions ||= []
  end

  def self.cors_allowed_actions=(arr)
    @cors_allowed_actions = arr
  end

  def self.allow_cors(*methods)
    self.cors_allowed_actions += methods
    before_action :cors_before_action, :only => methods
    protect_from_forgery :with => :null_session, :only => methods
  end

  def cors_before_action
    if /\Ahttps?:\/\/localhost:9000\z/ =~ request.headers['Origin']
      headers['Access-Control-Allow-Origin'] = request.headers['Origin']
    end
  end

protected
  def json_request?
    request.format.json?
  end
end

