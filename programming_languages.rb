def reformat_languages(languages)
  new_hash = {};

  languages.each do |programming_style, language_info|
    language_info.each do |program_name, program_type|
      if new_hash[program_name] == nil
        new_hash[program_name] = {:type => program_type[:type], :style => [programming_style]}
      else
        new_hash[program_name][:style] << programming_style
      end
    end
  end

  new_hash
end
