# Maps environment variables into configuration settings

# App's basic credentials
Rails.application.config.app_user_name = Figaro.env.app_user_name
Rails.application.config.app_password  = Figaro.env.app_password
