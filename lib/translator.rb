require 'yaml'
require 'pry'

def load_library(file)
  emoticons = YAML.load_file(file)
  new_sort = {}

  emoticons.collect do |key, value|
    new_sort[key] = {}
    new_sort[key][:english] = value[0]
    new_sort[key][:japanese] = value[1]
  end 
 new_sort
 end 
 
def get_japanese_emoticon(file, emoticon)
  new_sort = load_library(file)
    # data.each_with_object ({}) do |(key, value), array|
    # value.each do |inner_key, names|
    #   names.each do |name|
   result = []
  new_sort.each do |key, value|
    value.each do |name, emo|
    if emoticon == emo
      result << value[:japanese]
    end 
  end
  end 
if result[0] == NIL
    result << "Sorry, that emoticon was not found" 
end
result[0]
  
end
 
def get_english_meaning(file, emoticon)
  new_sort = load_library(file)
  result = []
  new_sort.each do |key, value|
    value.each do |name, emo|
    if emoticon == emo
      result << key
    end 
  end
  end 
if result[0] == NIL
    result << "Sorry, that emoticon was not found" 
end
result[0]
end