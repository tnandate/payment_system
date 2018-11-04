feature 'Sign Up' do
  scenario 'visitor can sign up with valid email address and password' do
    sign_up_with('test user', 'test@example.com', 'please123', 'please123')
    txts = [I18n.t("devise.registrations.signed_up"),
            I18n.t("devise.registrations.signed_up_but_unconfirmed")]
    expect(page).to have_content(/.*#{txts[0]}.*|.*#{txts[1]}.*/)
  end
end