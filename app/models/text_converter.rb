class TextConverter
  INTER_SENTENCE_SPACES_MATCHER = /(?<=\S\.)\s+(?=\S)/
  CORRECT_SPACING = " "

  def initialize(text)
    @original_text = text
  end

  def converted_text
    @converted_text ||= convert_text
  end

  def convert_text
    @original_text.gsub(INTER_SENTENCE_SPACES_MATCHER, CORRECT_SPACING)
  end
end
