class Client::ClientController < ActionController::Base
  before_action :authenticate_client!
end
