require 'spec_helper'

describe GroupMessage do

  it {should validate_presence_of(:title)}
  it {should validate_presence_of(:message)}
  it {should validate_presence_of(:img_url)}

end
