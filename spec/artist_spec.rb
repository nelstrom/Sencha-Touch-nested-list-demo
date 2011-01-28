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
    specify 'returns hash with :model key returning "Artist"' do
      @artist.catalogue[:model].should == "Artist"
    end
    specify 'when passed :leaf => :artist, returns true for :leaf value' do
      @artist.catalogue({:leaf => :artist})[:leaf].should be_true
    end
    specify 'returns hash with :items returning array' do
      @artist.save
      @track = @artist.albums.create(:name => 'album one')
      @artist.catalogue[:items].class.should == Array
    end
    describe 'when passed a genre' do
      specify 'only returns albums by that artist from that genre' do
        pop = Genre.create(:name => 'pop')
        rock = Genre.create(:name => 'rock')
        pop_album = Album.create(:name => 'The pop album', :genre => pop, :artist => @artist)
        rock_album = Album.create(:name => 'The rock album', :genre => rock, :artist => @artist)

        @artist.catalogue(:genre => pop)[:items].size.should == 1
        @artist.catalogue(:genre => rock)[:items].size.should == 1
        @artist.catalogue[:items].size.should == 2
      end
    end
  end
end

