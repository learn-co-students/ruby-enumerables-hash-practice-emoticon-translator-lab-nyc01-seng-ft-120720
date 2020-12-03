#require "pry" 
require "yaml"

def load_library(emoticons_file)
 file = YAML.load_file(emoticons_file)
 new_hash = {}
 file.each do |meaning, emot|
   new_hash[meaning] = {}
   new_hash[meaning][:english] = emot[0]
   new_hash[meaning][:japanese] = emot[1]
 end
 return new_hash
end
#puts load_library("./lib/emoticons.yml")
#binding.pry

def get_japanese_emoticon(emoticons_file, emot)
  meaning = load_library(emoticons_file)
  meaning.each do |emotion, language|
    if meaning[emotion][:english] == emot
      return meaning[emotion][:japanese]
    end
  end
  return "Sorry, that emoticon was not found"
end
#puts get_japanese_emoticon("./lib/emoticons.yml", ":$")

def get_english_meaning(emoticons_file, emot)
  meaning = load_library(emoticons_file)
  meaning.each do |emotion, language|
    if meaning[emotion][:japanese] == emot
      return emotion
    end
  end
  return "Sorry, that emoticon was not found"
end
#puts get_english_meaning("./lib/emoticons.yml", ":$")
#puts get_english_meaning("./lib/emoticons.yml", "(#^.^#)")