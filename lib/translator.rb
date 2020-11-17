# require modules here
require "yaml"

def load_library(emoticons_file)
gov = YAML.load_file(emoticons_file)

final_results = gov.each_with_object({}) do |(key, value), final_array|
final_array[key.to_s] = {:english => value[0], :japanese => value[1]}
end

return final_results
end





def get_japanese_emoticon(emoticons_file, emotixon)
  
for key, value in load_library(emoticons_file)
    if value[:english] == emotixon
        return value[:japanese]
    elsif value[:japanese] == emotixon
        return value[:english]
    end
    end
    return "Sorry, that emoticon was not found"
end







def get_english_meaning(emoticons_file, emotixon)
  
for key, value in load_library(emoticons_file)
    if value[:english] == emotixon
        return key.to_s
    elsif value[:japanese] == emotixon
        return key.to_s
    end
    end
      return "Sorry, that emoticon was not found"
end