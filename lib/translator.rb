# require modules here
require 'yaml'


def load_library
  library = YAML.load(File.read("emoticons.yml"))
  library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
