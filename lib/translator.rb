require "yaml"
require "pry"

def load_library(file_path)
  library = YAML.load_file(file_path)
  emoticon_hash = {}
  
  library.each do |key, value|
    # binding.pry
    emoticon_hash[key] = {}
    emoticon_hash[key][:english] = value[0]
    emoticon_hash[key][:japanese] = value[1]
    
  end
  emoticon_hash
  # binding.pry
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  
  emoticon_search = library.keys.find do |key|
      library[key][:japanese] == emoticon
    end
  emoticon_search ? emoticon_search : "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  
  emoticon_search = library.keys.find do |key|
      library[key][:english] == emoticon
    end
  emoticon_search ? library[emoticon_search][:japanese] : "Sorry, that emoticon was not found"
end

