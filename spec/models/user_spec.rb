require 'rails_helper'
require 'rails_helper'

# [X] It should have a unique username
# [X] It should have a unique email
# [X] It should have a valid email

describe User do

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it "should have a unique username" do
    expect { FactoryGirl.create(
      :user, username: "william1"
      )
    }.to_not raise_error
    expect { FactoryGirl.create(
      :user, username: "william1"
      )
    }.to raise_error
  end

  it "should have a unique email" do
    expect {
      FactoryGirl.create(
      :user, email: "william1@gmail.com"
      )
    }.to_not raise_error
    expect {
      FactoryGirl.create(
      :user, email: "william1@gmail.com"
      )
    }.to raise_error
  end

  it "should have a valid email" do
    expect {
      FactoryGirl.create(
      :user, email: "william1@gmail"
      )
    }.to raise_error
    expect {
      FactoryGirl.create(
      :user, email: "@gmail.com"
      )
    }.to raise_error
  end
end
