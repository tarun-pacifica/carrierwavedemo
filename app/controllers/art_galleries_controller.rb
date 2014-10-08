class ArtGalleriesController < ApplicationController
  before_action :set_art_gallery, only: [:show, :edit, :update, :destroy]

  # GET /art_galleries
  # GET /art_galleries.json
  def index
    @art_galleries = ArtGallery.all
  end

  # GET /art_galleries/1
  # GET /art_galleries/1.json
  def show
  end

  # GET /art_galleries/new
  def new
    @art_gallery = ArtGallery.new
  end

  # GET /art_galleries/1/edit
  def edit
  end

  # POST /art_galleries
  # POST /art_galleries.json
  def create
    @art_gallery = ArtGallery.new(art_gallery_params)

    respond_to do |format|
      if @art_gallery.save
        format.html { redirect_to @art_gallery, notice: 'Art gallery was successfully created.' }
        format.json { render :show, status: :created, location: @art_gallery }
      else
        format.html { render :new }
        format.json { render json: @art_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_galleries/1
  # PATCH/PUT /art_galleries/1.json
  def update
    respond_to do |format|
      if @art_gallery.update(art_gallery_params)
        format.html { redirect_to @art_gallery, notice: 'Art gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @art_gallery }
      else
        format.html { render :edit }
        format.json { render json: @art_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_galleries/1
  # DELETE /art_galleries/1.json
  def destroy
    @art_gallery.destroy
    respond_to do |format|
      format.html { redirect_to art_galleries_url, notice: 'Art gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_gallery
      @art_gallery = ArtGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_gallery_params
      params.require(:art_gallery).permit(:name, :location, :avatar, :remote_avatar_url)
    end
end
