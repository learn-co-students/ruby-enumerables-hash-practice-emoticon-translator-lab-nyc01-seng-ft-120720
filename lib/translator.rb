
require "yaml"
require "pry"


def load_library(path)
  emoticons = YAML.load_file(path)
  new_hash = {}

  emoticons.each do |key,value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end

  new_hash
end


def get_japanese_emoticon(path, emoticon)
  text = load_library(path)
  emoticon = text.keys.find do |key|
    text[key][:english] == emoticon
  end
  emoticon ? text[emoticon][:japanese] : "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  text = load_library(path)
  emoticon = text.keys.find do |key|
    text[key][:japanese] == emoticon
  end
  emoticon ? emoticon : "Sorry, that emoticon was not found"
end