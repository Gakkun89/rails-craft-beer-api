class ApplicationController < ActionController::API
  def home
    render 'public/index'
  end
end
