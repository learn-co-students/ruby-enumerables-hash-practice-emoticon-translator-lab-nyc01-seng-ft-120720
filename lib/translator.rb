require 'yaml'
require 'pry'

def load_library(emoticon_list)
  emoticons = YAML.load_file(emoticon_list)
  key_hash= {}

  emoticons.collect do |name, emoticons_arr|
    key_hash[name] = {}
    key_hash[name][:english] = emoticons_arr[0]
    key_hash[name][:japanese] = emoticons_arr[1]
  end
 key_hash
 end

 def get_japanese_emoticon(file_path, emoticon )

emoticons = load_library(file_path)

    emoticons.each do |key,value|
        value.each do |key2, value2|
          if emoticon == value2
            return value[:japanese]
          end
        end
    end
    return "Sorry, that emoticon was not found"
 end


def get_english_meaning(file_path,emoticon)

emoticons = load_library(file_path)

    emoticons.each do |key,value|
        value.each do |key2, value2|
          if emoticon == value2
            return key
          end
        end
    end
    return "Sorry, that emoticon was not found"
  end
