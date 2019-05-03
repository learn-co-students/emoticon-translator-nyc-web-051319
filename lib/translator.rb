require 'yaml'
require 'pry'

# require modules here
def load_library(file_path) #arg is taking in a string, so it's using whatevers in the .yml file so file_path
  emoticons = YAML.load_file(file_path) #we don't have to use path.yml because calling . on anything = calling method. so call on the file path which refers to info in emoticons.yml
    translator = {get_meaning: {}, get_emoticon: {}}
      emoticons.each do |meaning, emoticon_symbols| #iterate over resulting hash (emoticons)
          translator[:get_meaning][emoticon_symbols[1]] = meaning #when you make the key you have to set it equal to something, to make it populate
          translator[:get_emoticon][emoticon_symbols[2]] = emoticon_symbols
 #binding.pry

          #this is how we want it to look:
        # {
        #   get_meaning: {
        #     "☜(⌒▽⌒)☞": "angel"
        #   },
        #   get_emoticon: {
        #     "O:)": "☜(⌒▽⌒)☞"
        #   }
        # }

      #binding.pry
    end
  emoticons
end


def get_japanese_emoticon(file_path, )
  # code goes here
end

def get_english_meaning

  # code goes here
end
