# frozen_string_literal: true

module ApplicationCable
  class Connection < ActionCable::Connection::Base
    include Authenticated

    delegate :session, to: :request

    identified_by :user

    def connect
      cookies.each do |cookie|
        puts cook
      end
      reject_unauthorized_connection unless logged_in?

      self.user = current_user
    end
  end
end
