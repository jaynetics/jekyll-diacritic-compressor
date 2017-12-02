require 'active_support/multibyte'
require 'jekyll'

class JekyllDiacriticCompressor < Jekyll::Generator
  safe     true
  priority :highest

  def generate(site)
    site.pages.each      { |obj| obj.content = compress(obj.content) }
    site.posts.docs.each { |obj| obj.content = compress(obj.content) }
  end

  def compress(string)
    ActiveSupport::Multibyte::Chars.new(string).compose.to_s
  end
end
