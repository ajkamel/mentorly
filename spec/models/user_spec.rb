require 'spec_helper'

describe User do

  it {should have_secure_password }
  it {should have_and_belong_to_many(:groups)}
  it {should have_many(:group_messages).through(:groups)}

  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:email)}
  it {
    User.create(name: 'John', email: 'none', password: 'none', password_confirmation: 'none', admin: false, mentor: false)
    should validate_uniqueness_of(:email)
  }
  it {should validate_presence_of(:address)}
  it {should validate_presence_of(:picture_url)}
  it {should validate_presence_of(:bio)}
  it {should validate_presence_of(:birthdate)}

end
