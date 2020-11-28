# require modules here
require 'pry'
require 'yaml'
def load_library(file)
  emoji = YAML.load_file(file)
  final = emoji.each_with_object({}) do |(key,value), final|
      emoji[key].each do |inner_key, value|
       final[key] = {
          :english => emoji[key][0],
          :japanese => emoji[key][1]
        }
      end 
    end 
  end

def get_japanese_emoticon(file, emo)
   final1 = load_library(file)
   final1.each do |key,value|
     if emo == final1[key][:english]
       return final1[key][:japanese]
       end 
      end 
  return "Sorry, that emoticon was not found"
end 

def get_english_meaning(file, emo)
  final1 = load_library(file)
  final1.each do |key,value|
    if emo == final1[key][:japanese]
      return key 
    end 
  end 
  return "Sorry, that emoticon was not found"
  
  
end