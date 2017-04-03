require 'rails_helper'

# As am authenticated user
# I should be able to edit my event
# So that I can provide up-to-date information

# [X] I must be signed in
# [X] I must provide valid information
# [X] I must fill out all form fields
# [X] On successful submission I should be redirected to the event's show page and see my review
# [X] I should see a success message on successful submission
# [X] I should see an error message on unsuccessful submission

feature 'User creates an event' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:event) { FactoryGirl.create(:event, user: user) }

  scenario 'user fills out all valid information' do
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign In"

    visit event_path(event)
    click_link "Edit Event"
    fill_in "Description", with: "edit"
    click_button "Save Changes"

    expect(page).to have_content("Event Edited Successfully")
    expect(page).to have_content("Edit")
    expect(page).to have_content(user.username)
  end

  scenario 'user fills out invalid information' do
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign In"

    visit event_path(event)
    click_link "Edit Event"
    fill_in "Event Time", with: ""
    click_button "Save Changes"

    expect(page).to have_content("Event time can't be blank")
    expect(page).to_not have_content("Event Edited Successfully")
  end

  scenario 'admin fills out missing information' do
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_button "Sign In"

    visit event_path(event)
    click_link "Edit Event"
    fill_in "Zip", with: "1913"
    click_button "Submit"

    expect(page).to have_content("Zip is the wrong length")
    expect(page).to_not have_content("Event Edited Successfully")
  end
end
