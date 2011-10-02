class TissueSamplesController < ApplicationController
  # GET /tissue_samples
  # GET /tissue_samples.json
  def index
    @tissue_samples = TissueSample.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tissue_samples }
    end
  end

  # GET /tissue_samples/1
  # GET /tissue_samples/1.json
  def show
    @tissue_sample = TissueSample.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tissue_sample }
    end
  end

  # GET /tissue_samples/new
  # GET /tissue_samples/new.json
  def new
    @tissue_sample = TissueSample.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tissue_sample }
    end
  end

  # GET /tissue_samples/1/edit
  def edit
    @tissue_sample = TissueSample.find(params[:id])
  end

  # POST /tissue_samples
  # POST /tissue_samples.json
  def create
    @tissue_sample = TissueSample.new(params[:tissue_sample])

    respond_to do |format|
      if @tissue_sample.save
        format.html { redirect_to @tissue_sample, notice: 'Tissue sample was successfully created.' }
        format.json { render json: @tissue_sample, status: :created, location: @tissue_sample }
      else
        format.html { render action: "new" }
        format.json { render json: @tissue_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tissue_samples/1
  # PUT /tissue_samples/1.json
  def update
    @tissue_sample = TissueSample.find(params[:id])

    respond_to do |format|
      if @tissue_sample.update_attributes(params[:tissue_sample])
        format.html { redirect_to @tissue_sample, notice: 'Tissue sample was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tissue_sample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tissue_samples/1
  # DELETE /tissue_samples/1.json
  def destroy
    @tissue_sample = TissueSample.find(params[:id])
    @tissue_sample.destroy

    respond_to do |format|
      format.html { redirect_to tissue_samples_url }
      format.json { head :ok }
    end
  end
end
