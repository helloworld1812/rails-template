module V1
  class MetadataController < ApplicationController
    METADATA = YAML.load_file(Rails.root.join('config/metadatas/v1.yml'))

    def show
      render json: METADATA
    end
  end
end
