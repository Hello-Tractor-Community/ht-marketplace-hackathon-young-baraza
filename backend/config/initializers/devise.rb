
Devise.setup do |config|
  config.mailer_sender = "please-change-me-at-config-initializers-devise@example.com"
  require "devise/orm/active_record"
  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12

  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.navigational_formats = []
  config.secret_key = Rails.application.credentials.secret_key_base || Rails.env.production? && ENV['SECRET_KEY_BASE']

  config.sign_out_via = :delete
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other

  config.jwt do |jwt|
    jwt.secret = Rails.application.credentials.fetch(:secret_key_base)
    jwt.dispatch_requests = [
      ["POST", %r{^/users/sign_in$}],
    ]
    jwt.revocation_requests = [
      ["DELETE", %r{^/users/sign_out$}],
    ]
    jwt.expiration_time = 120.minutes.to_i
  end
  
end
