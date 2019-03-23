module SimpleTokenGenerator
  # Generator class provides some class methods to generate simple token.
  # Tokens consist of uppercase letters.
  # It's possible to change the formatting of those tokens.
  # Available formatting options are:
  #   prefix        String, will be the start of the generated token
  #   slices        Integer, the number of slices
  #   size_of_slice Integer, the size of each slice (amount of characters)
  #   delimiter     String, the character which will used to seperate slices
  class Generator
    def self.call(delimiter: '-', prefix: nil, slices: 1, size_of_slice: 4)
      unformated_token = unformated_token(slices * size_of_slice)
      "#{prefix}#{unformated_token.chars.each_slice(size_of_slice).map(&:join).join(delimiter)}"
    end

    private_class_method

    def self.unformated_token(length)
      length.times.map{ random_char }.join
    end

    def self.random_char
      ('A'..'Z').to_a.sample
    end
  end
end
