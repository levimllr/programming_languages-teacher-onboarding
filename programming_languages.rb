require "pry"

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, name|
    name.each do |name, type|
      if defined?(new_hash[name][:style])
        new_hash[name][:style] << style
      else 
        new_hash[name] = {:type => type[:type], :style => [style]}
      end
      binding.pry
    end
  end 
  return new_hash
end

reformat_languages(languages)