# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

 Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
     origins '*'
    # origins is the server that the front end is running on. Note we could alternatively specify this (e.g. localhost:3001)
    # having a * here means any origin can make a request to this API
    # the request can have access to any of the methods listeed below
     resource '*',
       headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
   end
 end
