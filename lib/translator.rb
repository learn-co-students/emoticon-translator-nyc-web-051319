require 'pry'
require 'yaml'
def load_library(file)
library = YAML.load_file(file)

result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, symbol|
    result["get_meaning"][symbol[1]] = meaning
    result["get_emoticon"][symbol[0]] = symbol[1]
  end
  result
end

def get_japanese_emoticon (file, english_input)
    library = load_library(file)
if library["get_emoticon"].include?(english_input)
      library["get_emoticon"][english_input]
  else
      "Sorry, that emoticon was not found"
end
end
def get_english_meaning (file, japanese_input)
library = load_library(file)
  if library["get_meaning"].include?(japanese_input)
    library["get_meaning"][japanese_input]
else
    "Sorry, that emoticon was not found"
  end
  end
