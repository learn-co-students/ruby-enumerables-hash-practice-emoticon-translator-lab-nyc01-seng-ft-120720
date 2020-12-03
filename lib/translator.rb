
require 'yaml'
require 'pry'

def load_library(emoticon_list)
 
  emoticons = YAML.load_file(emoticon_list)
  
  key_hash= {}

  emoticons.collect do |key, value|
key_hash[key] = {}
      binding.pry
key_hash = [key][value] 


    emoticon_list["get_emoticon"][value[0]] = value[1]  
 emoticon_list["get_meaning"][value[1]] = key
 end 
 emoticon_list
 end 
 
 
 def get_japanese_emoticon
   emoticons = YAML.load_file(emoticons.yml)

 end 
 
 def get_english_meaning
   emoticons = YAML.load_file(emoticons.yml)

  end 
  
  
  
  
  
  
  