require 'spec_helper'

describe Group do

  it {should have_and_belong_to_many(:users)}
  it {should have_many(:group_messages)}

  it {should validate_presence_of(:name)}
  it {
    Group.create(name: 'AJ Group')
    should validate_uniqueness_of(:name)
  }
  
end
