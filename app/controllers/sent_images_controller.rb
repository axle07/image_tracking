class SentImagesController < ApplicationController
  before_action :set_sent_image, only: [:show, :edit, :update, :destroy]

  # GET /sent_images
  # GET /sent_images.json
  def index
    @sent_images = SentImage.all
  end

  # GET /sent_images/1
  # GET /sent_images/1.json
  def show
  end

  # GET /sent_images/new
  def new
    @sent_image = SentImage.new
  end

  # GET /sent_images/1/edit
  def edit
  end

  # POST /sent_images
  # POST /sent_images.json
  def create
    @sent_image = SentImage.new(sent_image_params)

    respond_to do |format|
      if @sent_image.save
        format.html { redirect_to @sent_image, notice: 'Sent image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sent_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @sent_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sent_images/1
  # PATCH/PUT /sent_images/1.json
  def update
    respond_to do |format|
      if @sent_image.update(sent_image_params)
        format.html { redirect_to @sent_image, notice: 'Sent image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sent_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sent_images/1
  # DELETE /sent_images/1.json
  def destroy
    @sent_image.destroy
    respond_to do |format|
      format.html { redirect_to sent_images_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sent_image
      @sent_image = SentImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sent_image_params
      params.require(:sent_image).permit(:image_name, :date_sent, :quantity, :recipient, :size_of_image)
    end
end
