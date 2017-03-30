# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Rails.env.development? || Rails.env.production?

User.destroy_all
Event.destroy_all

np1 = User.create!(username: "pmhelping", email: "pmhelping@gmail.com", password: "password", password_confirmation: "password", contact_number: "215-111-1111", organization: "Philadelphia Ministry", profile_photo: "https://cdn.shopify.com/s/files/1/0277/9015/products/ministry_1024x1024.png?v=1447798571")

np2 = User.create!(username: "ffall", email: "ffall@gmail.com", password: "password", password_confirmation: "password", contact_number: "215-222-2222", organization: "Food For All", profile_photo: "http://pacificabeachcoalition.org/wp-content/uploads/2015/02/non-profit-icon.png")

np3 = User.create!(username: "caringunited", email: "caringunited@gmail.com", password: "password", password_confirmation: "password", contact_number: "215-333-3333", organization: "Caring United", profile_photo: "https://www.drugrehab.com/wp-content/themes/dr/images/local/orlando/circle-icon-relapse.png")

np4 = User.create!(username: "sjfoundation", email: "sjfoundation@gmail.com", password: "password", password_confirmation: "password", contact_number: "215-444-4444", organization: "St. Johns Foundation", profile_photo: "http://grantspace.org/extension/grantspace/design/grantspace_user/images/favicons/apple-touch-icon.png")

np5 = User.create!(username: "veteransforveterans", email: "veteransforveterans@gmail.com", password: "password", password_confirmation: "password", contact_number: "215-555-5555", organization: "Veterans for Veterans", profile_photo: "http://www.thesamaritaninn.org/wp-content/uploads/2014/10/veteransIcon.png")

event1 = Event.create!(user: np1, event_name: "Samuels Park Cleanup", event_date: "05/01/17", event_time: "9:00AM", address: "201 Green Street", city: "Philadelphia", state: "PA", zip: "19123", neighborhood: "Northern Liberties", description: "Neighborhood coming together to cleanup Samuels Park, includes trash collection, raking, and some gardening. Tools will be provided. Please wear close toed shoes and clothing that you are willing to get dirty.")

event2 = Event.create!(user: np2, event_name: "Bi-Annual Healthy Food Drive", event_date: "05/02/17", event_time: "12:00PM", address: "2000 Spring Garden Street", city: "Philadelphia", state: "PA", zip: "19130", neighborhood: "Art Museum", description: "Food drive to take lace at Holy Sisters Sacrament Church, proceeds matched by Whole Food but please feel free to bring any healthy pantry items, non perishables preferred.")

event3 = Event.create!(user: np3, event_name: "Trade-in Amnesty Day", event_date: "05/03/17", event_time: "10:00AM", address: "200 Callowhill Street", city: "Philadelphia", state: "PA", zip: "19123", neighborhood: "Old City", description: "No questions asked, safe space to trade-in weapons. Receive $50 Visa Gift card. Event takes place at City Community center from 10:00AM to 8:00PM.")

event4 = Event.create!(user: np4, event_name: "Walk for Addiction", event_date: "05/04/17", event_time: "8:00AM", address: "1900 Arch Street", city: "Philadelphia", state: "PA", zip: "19103", neighborhood: "Logan Square", description: "Walk starts 8:00AM sharp, leaving from Franklin Institute around Kelly Drive Loop. Course will be marked, light refreshments provided at finish. All proceeds benefit local addiction counseling services.")

event5 = Event.create!(user: np5, event_name: "Stand Up for Change", event_date: "05/05/17", event_time: "4:00PM", address: "500 Market Street", city: "Philadelphia", state: "PA", zip: "19106", neighborhood: "Old City", description: "Rally to support Veteran's Fund ensuring a safety for those returning from war. $5 voluntary donation asked for those partiipating. Pins will be provided, and we ask that everyone sign in at reception desk.")

event6 = Event.create!(user: np1, event_name: "Mentor Day", event_date: "05/06/17", event_time: "11:00AM", address: "1800 Chestnut Street", city: "Philadelphia", state: "PA", zip: "19103", neighborhood: "Center City West", description: "Mentor day meetup with street carnival, attendees are urged to sign up to mentor. We need you! Over 50 thousand Philadelphia youth are being raised by a single parent, make your mark today.")

event7 = Event.create!(user: np2, event_name: "Care Package Marathon", event_date: "05/07/17", event_time: "1:00PM", address: "600 Walnut Street", city: "Philadelphia", state: "PA", zip: "19106", neighborhood: "Washington Square", description: "Taking place under William's Pavillion, stations will function in round-robin format. Participants are urged to provide $10 voluntary donation to offset the cost of care items. Shop n' Save provided goods at half price for this event.")

event8 = Event.create!(user: np3, event_name: "Odds N' Ends Initiative", event_date: "05/08/17", event_time: "10:00AM", address: "1700 South Street", city: "Philadelphia", state: "PA", zip: "19146", neighborhood: "Fitler Square", description: "We have spoken to local elderly residents and provided a handyman to do list. Painting, lifting, patching, cleaning. Plenty for all skill levels. Meet at Holman Rec center, be prepared to help until 6:00PM!")

event9 = Event.create!(user: np4, event_name: "Blood Drive", event_date: "05/09/17", event_time: "2:00PM", address: "700 Christian Street", city: "Philadelphia", state: "PA", zip: "19147", neighborhood: "Bella Vista", description: "Philly Free Clinic is sponsoring a blood drive from 2:00 to 6:00PM. Paperwork will be on site for easy registration. Local sponsors are donating $10 to PFC for every donation.")

event10 = Event.create!(user: np5, event_name: "BBQ Day", event_date: "05/10/17", event_time: "12:00PM", address: "1600 Washington Avenue", city: "Philadelphia", state: "PA", zip: "19146", neighborhood: "Kensington", description: "Please join us for annual BBQ Day, a day of appreciation and rememberance for those whom served and continue to serve. All food and drink will be provided for veterans. Look for signs at entrance to Montgomery Park. Family welcome.")

end
