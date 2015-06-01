class ConversionsController < ApplicationController
  def convert
    if params[:text]
      @original_and_converted_text = TextConverter.new(params[:text]).text_versions

      render json: @original_and_converted_text
    else
      render status: :bad_request, text: I18n.t("convert.bad_request")
    end
  end
end
