# require modules here
require 'pry'
require 'yaml'
file = YAML.load_file(File.join(__dir__, 'emoticons.yml'))

def load_library(file)
  # code goes here
  file = YAML.load_file(File.join(__dir__, 'emoticons.yml'))
  translations = {}
  translations["get_meaning"] = {}
  translations["get_emoticon"] = {}
  file.each do |meaning, emoticons|
    translations["get_meaning"][emoticons[1]] = meaning
    translations["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  translations
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  emote = ""
  library = load_library(file)
  library.each do |key, info|
    info.each do |eng, jap|
      if emoticon == eng
        emote = jap
      end
    end
  end
  if emote == ""
    emote = "Sorry, that emoticon was not found"
  end
  emote
end

def get_english_meaning(file, emoticon)
  # code goes here
  meaning = ""
  library = load_library(file)
  library.each do |key, info|
    info.each do |jap, means|
      if emoticon == jap
        meaning = means
      end
    end
  end
  if meaning == ""
    meaning = "Sorry, that emoticon was not found"
  end
  meaning
end
