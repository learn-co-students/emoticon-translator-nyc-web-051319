require 'yaml'
require 'pry'

# require modules here

def load_library(path) #arg is taking in a string, so it's using whatevers in the .yml file so  we don't need to call it.
  emoticons = YAML.load_file(path) #we don't have to use path.yml because it's calling . on anything = calling method.
    #emoji_hash =
    translator = {
      get_meaning: {},
      get_emoticon: {}
  }
      emoticons.each do |meaning, emoticon_symbols| #iterate over resulting hash (emoticons)
<<<<<<< HEAD
          translator[:get_meaning][emoticon_symbols[1]] = meaning #when you make the key you have to set it equal to something, to make it populate
          translator[:get_emoticon][emoticon_symbols[2] =
        binding.pry 

        end

        # {
        #   get_meaning: {
        #     "☜(⌒▽⌒)☞": "angel"
        #   },
        #   get_emoticon: {
        #     "O:)": "☜(⌒▽⌒)☞"
        #   }
        # }

      #binding.pry
  emoticons
  # code goes here
  #Get emoticon, get meaning == point to inner hash
  #keys -- get meaning = Japanese emoticons, get emoticon - english emoticons
    #end
end


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning

  # code goes here
end
