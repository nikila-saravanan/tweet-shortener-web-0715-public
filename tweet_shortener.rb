# Write your code here.
require 'pry'

def dictionary
  {"hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "For" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@",
  "and" => "&" 
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  short_tweet = []
  tweet_array.each do |tweet_word|
    tweet_word = dictionary[tweet_word] if dictionary.keys.include?(tweet_word)
    short_tweet << tweet_word 
  end
  short_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    return short_tweet
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length <= 140
    return shortened_tweet
  elsif shortened_tweet.length > 140
    return shortened_tweet[0..136] + "..."
  end
end


