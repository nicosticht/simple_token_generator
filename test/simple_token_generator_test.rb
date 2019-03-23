require 'test_helper'

class SimpleTokenGeneratorTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SimpleTokenGenerator::VERSION
  end

  def test_that_it_generates_a_string
    assert_kind_of String, SimpleTokenGenerator::Generator.call
  end

  def test_that_it_is_random
    # actually this is a bad test, because there is a small chance that it is equal
    refute_equal SimpleTokenGenerator::Generator.call, SimpleTokenGenerator::Generator.call
  end

  def test_that_it_consists_of_given_number_of_blocks
    assert_equal 4, SimpleTokenGenerator::Generator.call(slices: 4, delimiter: ':').split(':').count
  end

  def test_that_size_of_a_slice_is_correct
    SimpleTokenGenerator::Generator.call(slices: 4, delimiter: ':', size_of_slice: 3).split(':').each do |slice|
      assert_equal 3, slice.chars.count
    end
  end

  def test_that_it_contains_only_uppercase_letters
    SimpleTokenGenerator::Generator.call(slices: 4, delimiter: '', size_of_slice: 3).chars.each do |char|
      assert_includes ('A'..'Z').to_a, char
    end
  end

  def test_that_it_contains_specified_delimiter
    assert SimpleTokenGenerator::Generator.call(slices: 4, delimiter: ':', size_of_slice: 3).include?(':')
  end

  def test_that_it_does_not_contain_specified_delimiter_if_only_one_slice
    assert !SimpleTokenGenerator::Generator.call(slices: 1, delimiter: ':').include?(':')
  end
end
