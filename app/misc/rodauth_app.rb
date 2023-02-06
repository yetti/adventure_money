# frozen_string_literal: true

class RodauthApp < Rodauth::Rails::App
  # primary configuration
  configure RodauthMain

  # secondary configuration
  # configure RodauthAdmin, :admin

  route do |r|
    rodauth.load_memory # autologin remembered users

    r.rodauth # route rodauth requests

    # ==> Authenticating requests
    # Call `rodauth.require_account` for requests that you want to
    # require authentication for. For example:
    #
    # # authenticate /dashboard/* and /account/* requests
    protected_paths = ["/", "/verify-account"]
    unless r.path.start_with?(*protected_paths)
      rodauth.require_account
    end

    # ==> Secondary configurations
    # r.rodauth(:admin) # route admin rodauth requests
  end
end
