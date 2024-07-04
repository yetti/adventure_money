module SessionHelpers
  # Convencience method for session names.
  def within_session(name_or_session, &)
    Capybara.using_session(name_or_session, &)
  end
end
