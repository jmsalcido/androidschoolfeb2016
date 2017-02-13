class WelcomeController < ApplicationController
  def index
    @host = request.url
  end
end
