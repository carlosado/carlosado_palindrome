require "test_helper"

class CarlosadoPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CarlosadoPalindrome::VERSION
  end

  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_is_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

end
