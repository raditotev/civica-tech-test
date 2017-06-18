# Creates instances of sign in page,
# allowing user login
class SignInPage < SitePrism::Page
  element :username, "#ap_email"
  element :password, "#ap_password"
  element :submit, "#signInSubmit"

  def log_in
    username.set "test.user@example.com"
    password.set "password"
    submit.click
  end
end
