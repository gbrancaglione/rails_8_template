require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:sessions).dependent(:destroy) }
  end

  describe 'password security' do
    it 'responds to #password and #password_confirmation' do
      user = User.new
      expect(user).to respond_to(:password)
      expect(user).to respond_to(:password_confirmation)
    end

    it 'encrypts the password' do
      user = User.create(email_address: 'EXAMPLE@Email.com', password: 'password123', password_confirmation: 'password123')
      expect(user.password_digest).not_to eq('password123')
    end
  end

  describe 'email normalization' do
    it 'normalizes email_address by stripping whitespace and downcasing' do
      user = User.create(email_address: '  EXAMPLE@Email.com  ', password: 'password', password_confirmation: 'password')
      expect(user.email_address).to eq('example@email.com')
    end
  end
end
