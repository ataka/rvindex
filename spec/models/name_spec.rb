require 'spec_helper'

describe Name do

  it 'save without error' do
    user = FactoryGirl.create(:name)
    expect(user.save).to be_true
  end

end
