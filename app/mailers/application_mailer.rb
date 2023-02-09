# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: "noreply@adventure-money.onrender.com"
  layout "mailer"
end
