
require "yaml"
def load_library(path)
  emoticons_lib = YAML.load_file(path)
  emoticons = {}
  emoticons["get_meaning"] = {} 
  emoticons["get_emoticon"] = {}
  emoticons_lib.each do |meaning, emojis|
    english = emojis[0]
    japanese = emojis[1]
    emoticons[meaning] = {:english => emojis[0], :japanese => emojis[1]}
    emoticons["get_meaning"][japanese] = meaning
    emoticons["get_emoticon"][english] = japanese
   end
  return emoticons
end


def get_japanese_emoticon(path, emoticon)
  emojis = load_library(path)
  if emojis["get_emoticon"].has_key?(emoticon)
    emojis["get_emoticon"][emoticon]
  else "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  emojis = load_library(path)
  if emojis["get_meaning"].has_key?(emoticon)
    emojis["get_meaning"][emoticon]
  else "Sorry, that emoticon was not found"
  end
end