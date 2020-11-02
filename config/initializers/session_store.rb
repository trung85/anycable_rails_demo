# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_anycable_custom_session', domain: :all, secure: !(Rails.env.development? || Rails.env.test?)
