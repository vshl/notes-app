class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    @tags = Tag.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show; end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to tags_url, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

  def set_tag
    @tag = Tag.find(params[:id])
  end
end
