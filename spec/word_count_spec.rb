require('rspec')
require('word_count')

describe("String#word_count") do
  it("Downcases input string") do
    expect("chuck".word_count()).to(eq("chuck"))
  end
end
