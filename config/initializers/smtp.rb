 require "ostruct"
 require "yaml"
 config = OpenStruct.new(YAML.load_file("#{Rails.root}/config/smtp.yml"))
 ::SMTPConfig = OpenStruct.new(config.send(Rails.env))

 ActionMailer::Base.default_options = {from: SMTPConfig.from}
 ActionMailer::Base.default_url_options = SMTPConfig.url
 ActionMailer::Base.smtp_settings = {
   :address              => SMTPConfig.address,
   :port                 => SMTPConfig.port,
   :domain               => SMTPConfig.domain,
   :user_name            => SMTPConfig.user_name,
   :password             => SMTPConfig.password,
   :authentication       => SMTPConfig.authentication,
   :enable_starttls_auto => SMTPConfig.enable_starttls_auto
 }