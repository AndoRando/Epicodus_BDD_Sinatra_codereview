require('rspec')
require('word_count')

describe("String#word_count") do

  #it("Downcases the string") do
  #  expect("chuck".word_count()).to(eq("chuck"))
  #end

  it("Splits the string into an array using regex to remove spaces and non-word characters") do
    expect("What would, a Woodchuck chuck".word_count()).to(eq(["what", "would", "a", "woodchuck", "chuck"]))
  end
end
