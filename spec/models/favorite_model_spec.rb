# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'validations' do
    it 'should validate presence of name' do
      favorite = Favorite.new(name: 'name', owner: 'owner')
      expect(favorite).to be_valid
    end
    it 'should validate presence of owner' do
      favorite = Favorite.new(owner: 'owner', name: 'name')
      expect(favorite).to be_valid
    end
  end
  describe 'unique name and owner' do
    it 'should validate uniqueness of name and owner' do
      favorite = Favorite.new(name: 'name', owner: 'owner')
      expect(favorite).to be_valid
    end
  end
end
