require 'simple_token_generator/version'

# This is the main module for the simple token geneator.
module SimpleTokenGenerator
  class Error < StandardError; end

  autoload :Generator, 'simple_token_generator/generator'
end
