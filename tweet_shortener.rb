def dictionary
{
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(string)
  split_words = string.split(' ')
  split_words.map! do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word.downcase]
    else
     word
    end
  end
new_string = split_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |ind_tweet|
  shorter = word_substituter(ind_tweet)
  puts shorter
end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    new_string = word_substituter(string)
    new_string[0..139]
  else
    string
  end
end
