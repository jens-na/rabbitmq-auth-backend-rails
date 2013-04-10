class AuthController < ApplicationController
  def user
    username = params[:username]
    password = params[:password]

    # todo devise auth example 
    render :text => "deny" 
  end

  def vhost
    username = params[:username]
    vhost = params[:vhost]

    # todo devise auth example
    render :text => "deny"
  end

  def resource
    username = params[:username]
    vhost = params[:vhost]
    resource = params[:resource]
    name = params[:name]
    permissions = params[:permissions] 

    # todo devise auth example
    render :text => "deny"
  end
end
