require "#{File.dirname(__FILE__)}/spec_helper"

describe 'album' do
  before(:each) do
    @album = Album.new(:name => 'test album')
  end

  specify 'should be valid' do
    @album.should be_valid
  end

  describe 'catalogue' do
    specify 'returns hash with :text key returning name' do
      @album.catalogue[:text].should == 'test album'
    end
    specify 'returns hash with :leaf key returning false' do
      @album.catalogue[:leaf].should be_false
    end
    specify 'returns hash with :items returning array' do
      @album.save
      @track = @album.tracks.create(:name => 'track one')
      @album.catalogue[:items].class.should == Array
    end
  end
end
