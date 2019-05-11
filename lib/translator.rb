require "pry"
require "yaml"

def load_library(file_path)
  return_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(file_path)
  library.each do |meaning, emoticon_array|
    english = emoticon_array[0]
    japanese = emoticon_array[1]
    return_hash["get_meaning"][japanese] = meaning
    return_hash["get_emoticon"][english] = japanese
  end
  return_hash
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_emoticon"][emoticon]
    if result
      result
    else
      "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]
    if result
      result
    else
      "Sorry, that emoticon was not found"
  end
end
