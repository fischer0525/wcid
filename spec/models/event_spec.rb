require 'rails_helper'

# [X] A bar should have a unique address
# [X] A bar should have a unique phone number
# [X] A bar should have a properly formatted phone number
# [X] All elements relating to the bar's address and phone number should be present
# [X] It should have many reviews

describe Event do

  it { should validate_presence_of(:event_name) }
  it { should validate_presence_of(:event_date) }
  it { should validate_presence_of(:event_time) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip) }
  it { should validate_presence_of(:description) }
  it { should validate_length_of(:zip) }

  it { should belong_to(:users) }

  it "should have a unique address" do
    expect { FactoryGirl.create(:event, address: "100 Market Steet") }.to_not raise_error
    expect { FactoryGirl.create(:event, address: "100 Market Steet") }.to raise_error
  end
end
