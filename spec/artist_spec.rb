require "#{File.dirname(__FILE__)}/spec_helper"

describe 'artist' do
  before(:each) do
    @artist = Artist.new(:name => 'test artist')
  end

  specify 'should be valid' do
    @artist.should be_valid
  end

  describe 'catalogue' do
    specify 'returns hash with :text key returning name' do
      @artist.catalogue[:text].should == 'test artist'
    end
    specify 'returns hash with :leaf key returning false' do
      @artist.catalogue[:leaf].should be_false
    end
    specify 'when passed :leaf => :artist, returns true for :leaf value' do
      @artist.catalogue({:leaf => :artist})[:leaf].should be_true
    end
    specify 'returns hash with :items returning array' do
      @artist.save
      @track = @artist.albums.create(:name => 'album one')
      @artist.catalogue[:items].class.should == Array
    end
  end
end

