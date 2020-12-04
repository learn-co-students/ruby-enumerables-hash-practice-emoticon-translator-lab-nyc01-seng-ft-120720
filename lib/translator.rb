
require 'pry'
require 'yaml'

def load_library(file_path)
  new_hash = {}
  emoticons = YAML.load_file(file_path)
  emoticons.each do |key,value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end 
  new_hash
end 

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  japanese_meaning = "Sorry, that emoticon was not found"
  
  library.each do |key, value|
    if value[:english].include?(emoticon)
      japanese_meaning = value[:japanese]
    end
  end
p japanese_meaning  
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  english_meaning = "Sorry, that emoticon was not found"
  
  library.each do |key, value|
    if value[:japanese].include?(emoticon)
      english_meaning = key
    end
  end
p english_meaning  
end
