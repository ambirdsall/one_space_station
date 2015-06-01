class ConversionsController < ApplicationController
  def convert
    render status: :bad_request, text: I18n.t("convert.bad_request") unless params[:text]

    @original_and_converted_text = TextConverter.new(params[:text]).text_versions

    render json: @original_and_converted_text
  end
end
