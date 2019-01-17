require_relative '../lib/mairie_scrapper.rb'


describe "the perform method" do
  it "should return the Hash class" do
    expect(perform.class).to eq(Hash)
  end

end