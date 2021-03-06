require 'rails_helper'

# As a user
# I would like to create a new bar
# So that the users can see this new bar

# [X] Only authorized users can create a new bar
# [X] I should see a success message on successful submission
# [X] I should see the new bar on the index page
# [X] I should see an error message if I fill out invalid information

feature 'create an event link is available to user' do
  let(:user) {FactoryGirl.create(:user)}
  scenario 'Unauthorized user visits homepage and does not see button to create a new event' do
    visit root_path

    expect(page).to_not have_link "Create Event"
  end


  scenario "Authorized user visits homepage and sees button to create event" do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    expect(page).to have_link "Create Event"
  end
end

feature 'create event link is only available to user' do
  let(:user) {FactoryGirl.create(:user)}

  scenario "Unauthorized user is unable to use direct path to new event form" do
    visit new_event_path

    expect(page).to have_content("This page doesn't exist")
  end


  scenario "Authorized user is able to use direct path to new event form" do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'
    visit new_event_path

    expect(page).to have_content('Event Name')
    expect(page).to have_content('Event Date')
    expect(page).to have_content('Event Time')
    expect(page).to have_content('Address')
    expect(page).to have_content('City')
    expect(page).to have_content('State')
    expect(page).to have_content('Zip')
    expect(page).to have_content('Neighborhood')
    expect(page).to have_content('Description')
  end

  scenario "Authorized user successfully adds new event" do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'
    visit new_event_path

    fill_in "Event Name", with: "New Event"
    fill_in "Event Date", with: "01/01/11"
    fill_in "Event Time", with: "1:00PM"
    fill_in "Address", with: "100 Market St"
    fill_in "City", with: "Philly"
    fill_in "State", with: "PA"
    fill_in "Zip", with: '19136'
    fill_in "Neighborhood", with: 'Kensington'
    fill_in "Description", with: "Food drive."
    click_button "Create Event"

    expect(page).to have_content("New Event")
    expect(page).to have_content("Event Added Successfully")
  end

  scenario "Authorized user fills out invalid information" do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'
    visit new_event_path

    fill_in "Event Name", with: "New Event"
    fill_in "Event Date", with: "01/01/11"
    fill_in "Event Time", with: "1:00PM"
    fill_in "Address", with: "100 Market St"
    fill_in "City", with: "Philly"
    fill_in "State", with: "PA"
    fill_in "Zip", with: '1913'
    fill_in "Neighborhood", with: 'Kensington'
    fill_in "Description", with: "Food drive."
    click_button "Create Event"

    expect(page).to_not have_content("NewEvent")
    expect(page).to_not have_content("Event Added Successfully")
    expect(page).to have_content("Zip is the wrong length")
  end


end
