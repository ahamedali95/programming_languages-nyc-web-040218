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
  new_hash = {};

  languages.each do |programming_style, language_info|
    language_info.each do |program_name, program_type|
      new_hash[program_name] = {:type => program_type[:type], :style => []}
      new_hash[program_name][:style].push(programming_style)
      binding.pry
    end
  end

  #new_hash[:javascript][:style].unshift(:oo)
  new_hash
end

reformat_languages(languages)
