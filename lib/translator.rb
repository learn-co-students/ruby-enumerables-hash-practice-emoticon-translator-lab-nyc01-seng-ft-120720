# require modules here
require 'pry'
require 'yaml'

def load_library( filePath )
  # code goes here
  emoticons = YAML.load_file( filePath )
  result = {}
  emoticons.each do |(emoticon, translations)|
    result[ emoticon ] = {
      :english => translations[0],
      :japanese => translations[1],
    }
  end
  result
end

def get_japanese_emoticon( filePath, emoticon )
  # code goes here
  dictionary = load_library( filePath )
  dictionary.each do | (entry, meanings) |
    return meanings[ :japanese ] if meanings[ :english ].eql? emoticon
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning( filePath, emoticon )
  # code goes here
  dictionary = load_library( filePath )
  dictionary.each do | (entry, meanings) |
    return entry if meanings[ :japanese ].eql? emoticon
  end
  "Sorry, that emoticon was not found"
end