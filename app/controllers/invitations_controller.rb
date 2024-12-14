# frozen_string_literal: true

class InvitationsController < Devise::InvitationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def invite_resource
    super do |user|
      user.skip_confirmation!
      @person = Person.find_by(uuid: params[:other][:person_uuid])
      user.person = @person
    end
  end

  # Permit the new params here.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:invite, keys: [ :other ])
  end
end
