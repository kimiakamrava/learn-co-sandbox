require 'yaml'

path = YAML.load_file('emoticons.yml')

def load_library(path)
    
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(path).each do |meaning, describe|
     english, japanese = describe
     emoticons["get_meaning"][japanese] = meaning
     emoticons["get_emoticon"][ennglish] = japanese
  end
    puts emoticons
   end

load_library(path)
  





