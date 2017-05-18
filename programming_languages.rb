require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each { |style, language_hash|
    language_hash.each { |language, type_hash|
      if new_hash.include?(language)
        new_hash[language][:type] = type_hash[:type]
        new_hash[language][:style] << style
      else
        new_hash[language] = {:type => type_hash[:type], :style => [style]}
      end
    }
  }
  new_hash
end
