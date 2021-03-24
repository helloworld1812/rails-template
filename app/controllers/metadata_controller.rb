class MetadataController < ApplicationController
  METADATA = YAML.load_file(Rails.root.join('config/metadata.yml'))

  def show
    render json: METADATA
  end
end
