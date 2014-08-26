require 'rails_helper'

describe Sighting do
  it { should validate_presence_of :date}
  it { should validate_presence_of :latitude}
  it { should validate_presence_of :longitude}
  it { should validate_numericality_of :latitude }
  it { should validate_numericality_of :longitude }
  it { should belong_to :species}
end
