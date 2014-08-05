# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      assert(RegexpM17N.non_empty?(make_data(enc)))
    end
  end

  private
  def make_data(enc)
    if enc.dummy?
      '.'.force_encoding(enc)
    else
      '.'.encode(enc)
    end
  end
end
