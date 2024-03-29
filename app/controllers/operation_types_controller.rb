class OperationTypesController < ApplicationController
  # GET /operation_types
  # GET /operation_types.json
  def index
    @operation_types = OperationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @operation_types }
    end
  end

  # GET /operation_types/1
  # GET /operation_types/1.json
  def show
    @operation_type = OperationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @operation_type }
    end
  end

  # GET /operation_types/new
  # GET /operation_types/new.json
  def new
    @operation_type = OperationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @operation_type }
    end
  end

  # GET /operation_types/1/edit
  def edit
    @operation_type = OperationType.find(params[:id])
  end

  # POST /operation_types
  # POST /operation_types.json
  def create
    @operation_type = OperationType.new(params[:operation_type])

    respond_to do |format|
      if @operation_type.save
        format.html { redirect_to @operation_type, notice: 'Operation type was successfully created.' }
        format.json { render json: @operation_type, status: :created, location: @operation_type }
      else
        format.html { render action: "new" }
        format.json { render json: @operation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /operation_types/1
  # PUT /operation_types/1.json
  def update
    @operation_type = OperationType.find(params[:id])

    respond_to do |format|
      if @operation_type.update_attributes(params[:operation_type])
        format.html { redirect_to @operation_type, notice: 'Operation type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @operation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operation_types/1
  # DELETE /operation_types/1.json
  def destroy
    @operation_type = OperationType.find(params[:id])
    @operation_type.destroy

    respond_to do |format|
      format.html { redirect_to operation_types_url }
      format.json { head :no_content }
    end
  end
end
