module AccountsHelper
  def form_cancel_link(account)
    if current_page?(controller: "accounts", action: "new")
      accounts_path
    else
      account_path(account)
    end
  end
end
