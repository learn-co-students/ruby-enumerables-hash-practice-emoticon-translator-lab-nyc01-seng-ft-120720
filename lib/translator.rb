require "yaml"
require "pry"

def load_library(path)
  path = YAML.load_file('./lib/emoticons.yml')
    path.each do |name, emoticon|
      path[name] ={}
      path[name][:english] = emoticon[0]
      path[name][:japanese] = emoticon[1]
    end
    path
end

def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path)
    emoticons.each do |meaning, language|
      language.each do |emote|
        emote.each do |lang|
          if emote[1] == emoticon
            return language[:japanese]
          end
        end
      end
    end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  emoticons.each do |meaning, language|
    language.each do |emote|
      emote.each do |lang|

        if language[:japanese] == emoticon
        return meaning
        end
      end
    end
  end
"Sorry, that emoticon was not found"
end
