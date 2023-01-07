# frozen_string_literal: true

module ControllerMacros
  # def login_admin
  #   before do
  #     @request.env["devise.mapping"] = Devise.mappings[:admin]
  #     sign_in(FactoryBot.create(:admin))
  #   end
  # end

  def login_user
    before do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryBot.create(:user)
      user.confirm!
      sign_in(user)
    end
  end
end

RSpec.configure do |config|
  config.include(Devise::Test::ControllerHelpers, type: :controller)
  config.include(Devise::Test::IntegrationHelpers, type: :request)

  config.extend(ControllerMacros, type: :controller)
end
