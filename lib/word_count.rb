class String
  define_method(:word_count) do |search_word|
    string_to_be_searched = downcase().split(/\W\s*/)
    string_to_be_searched.count(search_word.to_s().downcase())
  end
end
