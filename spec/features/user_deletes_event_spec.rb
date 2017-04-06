require 'rails_helper'

# As an admin
# I would like to be able to delete a bar
# If it no longer exists

# [X] I must be an admin to delete the bar
# [X] I should be redirected to the root page upon deletion

feature 'User deletes events' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:event) { FactoryGirl.create(:event, user: user) }

  scenario 'authorized user clicks the delete link' do
    visit root_path
    click_link "Sign In"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign In"

    visit event_path(event)
    click_link("Delete Bar")
    expect(page).to have_content("Event Deleted Successfully")
    expect(page).to_not have_content("Website")
  end
end
