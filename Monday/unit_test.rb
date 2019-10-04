require "test/unit"
require "./refinements_in_file"

  using StringExtension

  class ToAlphanumericTest < Test::Unit::TestCase 
    def test_strip_non_aplanumeric_chars
        assert_equal "3 the Magic Number", "#3, the *Magic Number?*".to_alphanumeric
    end

    def test_replace
      original = %w|one two one three|
      replaced = original.replace("one","zero")
      assert_equal %w|zero two zero three|, replaced
    end
  end

