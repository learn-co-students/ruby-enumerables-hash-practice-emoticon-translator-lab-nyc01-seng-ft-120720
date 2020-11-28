# require modules here
require "yaml"
require "pry"

def load_library(file_path)
 emoticon = YAML.load_file(file_path)
 fresh_hash = {}
 
 emoticon.each do |key,value|
   fresh_hash[key] = {}
   fresh_hash[key] [:english] = value[0]
   fresh_hash[key] [:japanese] = value[1]
 end
 fresh_hash
end

def get_japanese_emoticon(file_path,emoticon)
  library = load_library(file_path)
  #binding.pry
  emoticon_key = library.keys.find do |key|
    library[key][:english] == emoticon
  end
  #emoticon_key ? library[emoticon_key][:japanese] : "Sorry, that emoticon was not found"
  if emoticon_key == nil then
     "Sorry, that emoticon was not found"
   else
     library[emoticon_key] [:japanese]
   end
   
 end

def get_english_meaning(file_path,emoticon)
   library = load_library(file_path)
   emoticon = library.keys.find do |key|
    library[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end