class TextConverter
  INTER_SENTENCE_SPACES_MATCHER = /(?<=\S\.)\s+(?=\S)/
  CORRECT_SPACING = " "

  def initialize(text)
    @original_text = text
    @spaces_corrected = []
  end

  def text_versions
    {
      original_text: @original_text,
      converted_text: converted_text,
      spaces_corrected: @spaces_corrected
    }
  end

  protected

  def converted_text
    @converted_text ||= convert_text
  end

  # this solution feels pretty hacky: given more time, I'd love to find a more
  # elegant solution. Maybe writing a custom enumerator?
  def convert_text
    matches = 0
    @original_text.gsub(INTER_SENTENCE_SPACES_MATCHER) do |match|
      matches += 1
      @spaces_corrected << matches if match != CORRECT_SPACING

      CORRECT_SPACING
    end
  end
end
