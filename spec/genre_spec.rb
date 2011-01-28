require "#{File.dirname(__FILE__)}/spec_helper"

describe 'genre' do
  before(:each) do
    @genre = Genre.new(:name => 'test genre')
  end

  specify 'should be valid' do
    @genre.should be_valid
  end

  describe 'catalogue' do
    specify 'returns hash with :text key returning name' do
      @genre.catalogue[:text].should == 'test genre'
    end
    specify 'returns hash with :model key returning Genre' do
      @genre.catalogue[:model].should == "Genre"
    end
    specify 'returns hash with :leaf key returning false' do
      @genre.catalogue[:leaf].should be_false
    end
    specify 'when passed :leaf => :genre, returns true for :leaf value' do
      @genre.catalogue({:leaf => :genre})[:leaf].should be_true
    end
    describe 'items' do
      specify 'is an empty array' do
        @genre.catalogue[:items].should be_empty
      end
      specify 'is an array' do
        @genre.catalogue[:items].class.should == Array
      end
    end
  end
end
