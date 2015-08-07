require('rspec')
require('word_count')

describe("String#word_count") do

  #it("Downcases the string") do
  #  expect("chuck".word_count()).to(eq("chuck"))
  #end

  #it("Splits the string into an array using regex to remove spaces and non-word characters") do
  #  expect("What would, a Woodchuck chuck".word_count()).to(eq(["what", "would", "a", "woodchuck", "chuck"]))
  #end

  it("Searches the array and counts the instances of a given string") do
    expect("Woodchuck chuck if a woodchuck could chuck wood".word_count("woodchuck")).to(eq(2))
  end

  it("Tests for common non-word characters (. , ! ?)") do
    expect("Woodchuck. chuck if a woodchuck? could woodchuck, woodchuck!".word_count("woodchuck")).to(eq(4))
  end

  it("Tests for use of numbers and non-string arguments") do
    expect("123. 1234, 123! 122. 221? 123,".word_count(123)).to(eq(3))
  end
end
