# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emotes = YAML.load(File.read(file_path))
  emotes.map do |key, value|
    emotes[key] = {:english => value[0], :japanese => value[1]}
  end
  emotes
  # code goes here
end
emotes = load_library("lib/emoticons.yml")

def get_japanese_emoticon(file_path, search_emote)
  emotes = load_library(file_path)
  return_emote = ""
  emotes.each do |name, languages|
    languages.each do |language, emote|
      if emote == search_emote
        return_emote = languages[:japanese]
      end
    end
  end
  if return_emote == ""
    return "Sorry, that emoticon was not found"
  else
    return_emote
  end
end

def get_english_meaning(file_path, search_emote)
  # code goes here
  emotes = load_library(file_path)
  return_emote = ""
  emotes.each do |name, languages|
    languages.each do |language, emote|
      if emote == search_emote
        return_emote = name
      end
    end
  end
  if return_emote == ""
    return "Sorry, that emoticon was not found"
  else
    return_emote
  end
end
