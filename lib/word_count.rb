class String
  define_method(:word_count) do
    string_to_be_searched = downcase().split(/\W*\s/)
  end
end
