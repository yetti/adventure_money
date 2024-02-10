# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user_info = request.env["omniauth.auth"]
    raise user_info # customise session management here
  end
end
