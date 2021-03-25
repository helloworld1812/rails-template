class TranslationsController < ApplicationController
  before_action :set_locale_code

  def show
    result = Rails.cache.fetch("translations/#{@code}") do
      YAML.load_file(Rails.root.join("config/translations/#{@code}.yml"))
    end

    render json: result
  end

  private

  def allowed_locales
    %w[en zh-CN]
  end

  def set_locale_code
    if params[:code].present? && allowed_locales.include?(params[:code])
      @code = params[:code]
    else
      @code = 'en'
    end
  end
end
