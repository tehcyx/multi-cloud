# Configure the Heroku provider
provider "heroku" {
    email = "${env.heroku_email}"
    api_key = "${env.heroku_api_key}"
}

# Create a new application
resource "heroku_app" "default" {
    name = "multi-cloud"
    region = "us"

    config_vars {
        DEBUG = "multi-cloud:*"
    }
}
