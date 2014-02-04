require 'spec_helper'

describe Name do

  it 'save without error' do
    bach = FactoryGirl.create(:bach)
    expect(bach.save).to be_true
  end

end
