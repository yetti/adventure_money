class PagesController < ApplicationController
  def index
    flash[:alert] = "This is an alert message."
    flash[:info] = "This is an info message."
    flash[:success] = "This is a success message."
    flash[:error] = "This is an error message."
  end
end
