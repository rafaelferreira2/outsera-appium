class LoginScreen
  attr_accessor :inpt_email, :inpt_password, :btn_submit, :alert_error

  def initialize
      @inpt_email = "io.qaninja.android.twp:id/etEmail"
      @inpt_password = "io.qaninja.android.twp:id/etPassword"
      @btn_submit = "io.qaninja.android.twp:id/btnSubmit"
      @alert_error = "io.qaninja.android.twp:id/textinput_error"
  end

  def sign_in(email, password)
      find_element(id: @inpt_email).send_keys(email)
      find_element(id: @inpt_password).send_keys(password)
      find_element(id: @btn_submit).click
  end

  def alert
      find_element(id: @alert_error)
  end
end