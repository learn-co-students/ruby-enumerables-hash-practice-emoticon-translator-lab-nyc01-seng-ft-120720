# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  emoticon_library = {}
  library = YAML.load_file(file)
  library.each_key do |key|
   emoticon_library[key] = {english: library[key][0], japanese: library[key][1]}
  end
  
  emoticon_library
end

def get_japanese_emoticon (file, emoticon)
  emoticon_library = load_library(file)
  japanese_emoticon = "Sorry, that emoticon was not found"
  i=0 
  while i < emoticon_library.keys.length do
    if emoticon_library.invert.keys[i][:english] == emoticon
      japanese_emoticon = emoticon_library.values[i][:japanese]
      return japanese_emoticon
    end
    i += 1
  end
  
  japanese_emoticon
end

def get_english_meaning(file, emoticon)
  emoticon_library = load_library(file)
  english_meaning = "Sorry, that emoticon was not found"
  i=0 
  while i < emoticon_library.keys.length do
    if emoticon_library.invert.keys[i][:japanese] == emoticon
      english_meaning = emoticon_library.keys[i]
      return english_meaning
    end
    i += 1
  end
  
  english_meaning
end