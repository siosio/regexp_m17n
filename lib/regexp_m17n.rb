module RegexpM17N
  def self.non_empty?(str)
    to_utf8_str(str) =~ /^.+$/
  end

  private
  def self.to_utf8_str(str)
    if str.encoding.dummy?
      str.force_encoding('utf-8')
    else
      str.encode('utf-8', str.encoding)
    end
  end

end