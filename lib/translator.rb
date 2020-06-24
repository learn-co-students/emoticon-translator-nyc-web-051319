# require modules here
require "yaml"
require "pry"

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  new_hash = Hash.new

  new_hash["get_emoticon"] = Hash.new
  new_hash["get_meaning"] = Hash.new

  emoticons.each do |emotion, emoji|
      new_hash["get_emoticon"][emoji.first] = emoji.last
      new_hash["get_meaning"][emoji.last] = emotion
  end
  new_hash
end



def get_japanese_emoticon(path, emoticon)
  # code goes here
  new_hash = load_library(path)
  japanese_emoji = new_hash["get_emoticon"][emoticon]

  if japanese_emoji == nil
    japanese_emoji = "Sorry, that emoticon was not found"
  end

  japanese_emoji
end

def get_english_meaning(path, emoticon)
  # code goes here
  new_hash = load_library(path)
  english_meaning = new_hash["get_meaning"][emoticon]

  if english_meaning == nil
    english_meaning = "Sorry, that emoticon was not found"
  end

  english_meaning
end
