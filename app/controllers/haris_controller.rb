class HarisController < ApplicationController
  # GET /haris
  # GET /haris.json
  def index
    @haris = Hari.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @haris }
    end
  end

  # GET /haris/1
  # GET /haris/1.json
  def show
    @hari = Hari.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hari }
    end
  end

  # GET /haris/new
  # GET /haris/new.json
  def new
    @hari = Hari.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hari }
    end
  end

  # GET /haris/1/edit
  def edit
    @hari = Hari.find(params[:id])
  end

  # POST /haris
  # POST /haris.json
  def create
    @hari = Hari.new(params[:hari])

    respond_to do |format|
      if @hari.save
        format.html { redirect_to @hari, notice: 'Hari was successfully created.' }
        format.json { render json: @hari, status: :created, location: @hari }
      else
        format.html { render action: "new" }
        format.json { render json: @hari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /haris/1
  # PUT /haris/1.json
  def update
    @hari = Hari.find(params[:id])

    respond_to do |format|
      if @hari.update_attributes(params[:hari])
        format.html { redirect_to @hari, notice: 'Hari was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haris/1
  # DELETE /haris/1.json
  def destroy
    @hari = Hari.find(params[:id])
    @hari.destroy

    respond_to do |format|
      format.html { redirect_to haris_url }
      format.json { head :no_content }
    end
  end
end
