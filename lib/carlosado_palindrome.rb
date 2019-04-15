require "carlosado_palindrome/version"

module CarlosadoPalindrome

  # Returns true for a palindrome or false otherwise
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing
    def processed_content
      self.to_s.scan(/[a-z\d]/i).join.downcase
    end
end

class String
  include CarlosadoPalindrome
end

class Integer
  include CarlosadoPalindrome
end
