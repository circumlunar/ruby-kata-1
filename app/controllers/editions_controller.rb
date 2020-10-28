class EditionsController < ApplicationController
  before_action :set_edition, only: [:show]

  def index
    @editions = Edition.all

    # filter
    @editions = @editions.by_isbn(params[:isbn]) if params[:isbn].present?
    @editions = @editions.by_author_email(params[:email]) if params[:email].present?

    # sort
    @editions = @editions.ordered_by_title

    render json: @editions, each_serializer: Echocat::EditionSerializer, serializer: ActiveModel::Serializer::CollectionSerializer
  end

  def show
    render json: @edition, serializer: Echocat::EditionSerializer
  end

  private

  def set_edition
    @edition = Edition.find(params[:id])
  end
end
