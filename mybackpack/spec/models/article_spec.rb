require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations', type: :model do
    context "when article's data are correct" do
      it 'is valid' do
        expect(build(:article)).to be_valid
      end
    end

    context 'when title is blank' do
      it 'is not valid' do
        expect(build(:article, title: '')).not_to be_valid
      end
    end

    context 'when title longer than 200 symbols' do
      it 'is not valid' do
        expect(build(:article, title: 't' * 201)).not_to be_valid
      end
    end

    context 'when text is blank' do
      it 'is not valid' do
        expect(build(:article, text: '')).not_to be_valid
      end
    end

    context 'when source is blank' do
      it 'is not valid' do
        expect(build(:article, source: '')).not_to be_valid
      end
    end
  end
end
