require_relative '../lib/crypto_scrapper.rb'


describe "the perform method" do
  it "should return the Hash class" do
    expect(crypto_scrapper.class).to eq(Hash)
  end

end