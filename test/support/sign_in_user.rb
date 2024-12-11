# frozen_string_literal: true

module SignInUser
  private

  def sign_in_user(user: nil)
    unless user.present?
      @user = create(:user)
      sign_in @user
    end
  end
end
