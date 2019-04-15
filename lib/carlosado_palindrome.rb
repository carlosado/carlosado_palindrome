require "carlosado_palindrome/version"

#module CarlosadoPalindrome
#  class Error < StandardError; end
#end

class String

  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    def processed_content
      self.scan(/[a-z]/i).join.downcase
    end

end
