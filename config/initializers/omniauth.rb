# Rails.application.config.middleware.use OmniAuth::Builder do
#   # provider :developer unless Rails.env.production?
#   provider :openid_connect, {
#     name: :zitadel,
#     issuer: ENV["ZITADEL__ISSUER"],
#     discovery: true,
#     scope: [:openid, :profile, :email],
#     uid_field: "preferred_username",
#     send_scope_to_token_endpoint: true,
#     pkce: true,
#     pkce_verifier: proc { SecureRandom.hex(64) },
#     client_options: {
#       identifier: ENV["ZITADEL__CLIENT_ID"],
#       redirect_uri: ENV["ZITADEL__REDIRECT_URI"],
#       host: ENV["ZITADEL__AUTH_HOST"],
#       authorization_endpoint: "/oauth/v2/authorize",
#       token_endpoint: "/oauth/v2/token",
#       userinfo_endpoint: "/oidc/v1/userinfo",
#       jwks_uri: "/oauth/v2/keys",
#       end_session_endpoint: "/oidc/v1/end_session"
#     }
#   }
# end

# OmniAuth.config do |config|
#   config.logger = Rails.logger
# end
