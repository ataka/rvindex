require 'spec_helper'

describe Name do

  describe 'Create and Save' do
    context 'No last name' do
      it 'error if last name is not present' do
        I18n.enforce_available_locales = false
        expect(FactoryGirl.build(:no_name)).to have(1).error_on(:last)
      end
    end

    context 'Last name only' do
      it 'save without error' do
        strauss = FactoryGirl.create(:strauss)
        expect(strauss.save).to be_true
      end
    end

    context 'First and last name' do
      it 'save without error' do
        j_strauss = FactoryGirl.create(:j_strauss)
        expect(j_strauss.save).to be_true
      end
    end

    context 'First and last name with suffix' do
      it 'save without error' do
        j_strauss2 = FactoryGirl.create(:j_strauss2)
        expect(j_strauss2.save).to be_true
      end
    end
  end

end
