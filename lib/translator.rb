require "yaml"
require'pry'
def load_library(path)
  # code goes here
 yml_hash={}
 YAML.load_file(path)

YAML.load_file(path).each do |key ,value|
   yml_hash[key]={}
   yml_hash[key][:english]=value[0]
   yml_hash[key][:japanese]=value[1]
   end
    yml_hash
end

def get_japanese_emoticon(path,emoticon)
  # code goes here
  load_library(path).each do |key, value|
    if value[:english] == emoticon
      return value[:japanese]

    end
  end
return "Sorry, that emoticon was not found"
end

def get_english_meaning(path,emoticon)
  # code goes here
   load_library(path).each do |key, value|
    if value[:japanese]==emoticon
      return key
    end
   end
   return "Sorry, that emoticon was not found"
end
