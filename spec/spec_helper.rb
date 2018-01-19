require_relative "../lib/keycloak-admin"

require "byebug"

def configure
  KeycloakAdmin.configure do |config|
    config.server_url       = "http://auth.service.io/auth"
    config.client_id        = "admin-cli"
    config.user_realm_name  = "master2"
    config.username         = "bobby"
    config.password         = "coucou"
  end 
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  configure
end