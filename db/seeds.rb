# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

nonProfit1 = User.create(username: "NonProfit1", email: "NonProfit1@NonProfit1.com", password: "NonProfit1", password_confirmation: "NonProfit1", contact_number: "215-555-5555", organization: "NonProfit1")

cleanUp1 = Event.create(user: nonProfit1, event_name: "Neighborhood Cleanup 2", event_date: "05/05/17", event_time: "8:00AM", address: "100 Master Street", city: "Philadelphia", state: "PA", neighborhood: "Kensington", description: "Neighborhood coming together to cleanup Philadelphia Park, includes trash collection, raking, and some gardening. Tools will be provided. Please wear close toed shoes and clothing that you are willing to get dirty.")

cleanUp2 = Event.create(user: nonProfit1, event_name: "Neighborhood Cleanup 2", event_date: "05/05/17", event_time: "8:00AM", address: "100 Master Street", city: "Philadelphia", state: "PA", neighborhood: "Kensington", description: "Neighborhood coming together to cleanup Philadelphia Park, includes trash collection, raking, and some gardening. Tools will be provided. Please wear close toed shoes and clothing that you are willing to get dirty.")

cleanUp3 = Event.create(user: nonProfit1, event_name: "Neighborhood Cleanup 2", event_date: "05/05/17", event_time: "8:00AM", address: "100 Master Street", city: "Philadelphia", state: "PA", neighborhood: "Kensington", description: "Neighborhood coming together to cleanup Philadelphia Park, includes trash collection, raking, and some gardening. Tools will be provided. Please wear close toed shoes and clothing that you are willing to get dirty.")

cleanUp4 = Event.create(user: nonProfit1, event_name: "Neighborhood Cleanup 2", event_date: "05/05/17", event_time: "8:00AM", address: "100 Master Street", city: "Philadelphia", state: "PA", neighborhood: "Kensington", description: "Neighborhood coming together to cleanup Philadelphia Park, includes trash collection, raking, and some gardening. Tools will be provided. Please wear close toed shoes and clothing that you are willing to get dirty.")

cleanUp5 = Event.create(user: nonProfit1, event_name: "Neighborhood Cleanup 2", event_date: "05/05/17", event_time: "8:00AM", address: "100 Master Street", city: "Philadelphia", state: "PA", neighborhood: "Kensington", description: "Neighborhood coming together to cleanup Philadelphia Park, includes trash collection, raking, and some gardening. Tools will be provided. Please wear close toed shoes and clothing that you are willing to get dirty.")

cleanUp6 = Event.create(user: nonProfit1, event_name: "Neighborhood Cleanup 2", event_date: "05/05/17", event_time: "8:00AM", address: "100 Master Street", city: "Philadelphia", state: "PA", neighborhood: "Kensington", description: "Neighborhood coming together to cleanup Philadelphia Park, includes trash collection, raking, and some gardening. Tools will be provided. Please wear close toed shoes and clothing that you are willing to get dirty.")
