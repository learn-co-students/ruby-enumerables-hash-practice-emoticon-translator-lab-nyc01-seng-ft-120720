# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  emotes = YAML.load_file(path)
  results = {}
  
  emotes.each do |meaning, value|
  results[meaning] = {:english => value[0], :japanese => value[-1]}
end
return results
end

def get_japanese_emoticon(path, emoticon)
  emotes = load_library(path)
  
  emotes.each do |meaning, value|
  
    if value[:english] == emoticon
      return value[:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  emotes = load_library(path)
  
  emotes.each do |meaning, value|
    
    if value[:japanese][emoticon]
      return meaning
    end
end
  return "Sorry, that emoticon was not found"
end