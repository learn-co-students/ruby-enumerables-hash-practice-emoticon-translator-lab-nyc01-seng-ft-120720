# require modules here
require 'yaml'
require 'pry'

def load_library(list)
  # code goes here
 library = {}
 list = YAML.load_file(list)
 list.each do |key, value|
     library[key] = {
      # binding.pry
       :english => value[0],
       :japanese => value[1]
     }
  
 end
 library
end



def get_english_meaning(file, emoticon)

  
    tempHash = load_library(file)
  englishMeaning = (tempHash.select { |k,v| v[:japanese] == emoticon}).keys.join
  tempHash.include?(englishMeaning) ? englishMeaning : "Sorry, that emoticon was not found"
end
  # code goes here

def get_japanese_emoticon(file, emoticon)
  list1 =  load_library(file)
 # binding.pry
  list1.each do|name, emoticons|
   if list1[name][:english] == emoticon
     return list1[name][:japanese]
  # if  emoticons.any? { |lang, symbol| symbol == emoticon }
   #  return lang.values[1]
    # binding.pry
   end
 end
  return "Sorry, that emoticon was not found"
end