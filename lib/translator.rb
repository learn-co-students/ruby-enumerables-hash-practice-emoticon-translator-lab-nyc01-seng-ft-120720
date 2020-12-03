



def load_library(emoticon.yml)
  emoticons = YAML.load_file(emoticon_file)
  emoticon_list = {"get_meaning" => {}, "get_emoticon" => {}} 
  
  emoticons.collect do |key, value|
    emoticon_list["get_emoticon"][value[0]]
 = value[1]  
 emoticon_list["get_meaning"][value[1]] = key
 end 
 emoticon_list
 end 
 
 
 def get_japanese_emoticon
   emoticons = YAML.load_file(emoticons.yml)

 end 
 
 def get_english_meaning
   emoticons = YAML.load_file(emoticons.yml)

  end 
  
  
  
  
  
  
  