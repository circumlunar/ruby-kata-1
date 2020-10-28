class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  def index
    @authors = Author.all

    render json: @authors, each_serializer: Echocat::AuthorSerializer, serializer: ActiveModel::Serializer::CollectionSerializer
  end

  def show
    render json: @author, serializer: Echocat::AuthorSerializer
  end

  private

    def set_author
      @author = Author.find(params[:id])
    end
end
