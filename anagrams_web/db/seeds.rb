def canonical_maker(word)
  word.downcase.chars.sort.join
end

File.open("words").each do |line|
  line.each_line do |word|
    canonical = canonical_maker(word.chomp)
    Word.create!(word: word.chomp, canonical: canonical)
  end
end