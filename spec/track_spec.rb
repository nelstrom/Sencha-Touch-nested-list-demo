require "#{File.dirname(__FILE__)}/spec_helper"

describe 'track' do
  before(:each) do
    @track = Track.new(:name => 'test user')
  end

  specify 'should be valid' do
    @track.should be_valid
  end

  specify 'should require a name' do
    @track = Track.new
    @track.should_not be_valid
    @track.errors[:name].should include("Name must not be blank")
  end

  describe 'catalogue' do
    specify 'returns a hash with name as text' do
      @track.catalogue[:text].should == 'test user'
    end
    specify 'returns a hash with leaf set to true' do
      @track.catalogue[:leaf].should be_true
    end
  end
end
