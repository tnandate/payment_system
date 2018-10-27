module Features
  module SessionHelpers
    def sign_up_with(name, email, password, confirmation)
      visit new_user_registration_path
      fill_in "Name", with: name
      fill_in "Email", with: email
      fill_in "Password", with: password
      fill_in "Password confirmation", with: confirmation
      click_button "Sign up"
    end
  end
end
