class SignupScreen

  def signup(user)
      find_element(id: "io.qaninja.android.twp:id/etUsername").send_keys(user["name"])
      find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(user["email"])
      find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(user["password"])
      select_profile(user["profile"])
      find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
  end

  def select_profile(profile)
      find_element(id: "io.qaninja.android.twp:id/spinnerJob").click
      find_element(xpath: "//*[@text='#{profile}']").click
  end

end