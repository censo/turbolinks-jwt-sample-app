ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "9098ca615e828d90b71f31d68687aa07"
  config.secret = "75cceb1ba57a3608241a129fba776f79"
  config.old_secret = ""
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.reauth_on_access_scope_changes = true
  config.embedded_app = true
  config.after_authenticate_job = false
  config.api_version = "2020-04"
  config.shop_session_repository = 'Shop'
  config.allow_jwt_authentication = true
  config.webhooks = [
    {topic: 'app/uninstalled', address: "#{ENV['APP_URL']}/webhooks/app_uninstalled", format: 'json'},
  ]
end

# ShopifyApp::Utils.fetch_known_api_versions                        # Uncomment to fetch known api versions from shopify servers on boot
# ShopifyAPI::ApiVersion.version_lookup_mode = :raise_on_unknown    # Uncomment to raise an error if attempting to use an api version that was not previously known
