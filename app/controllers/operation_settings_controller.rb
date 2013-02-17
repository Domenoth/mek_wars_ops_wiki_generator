class OperationSettingsController < ApplicationController
  # GET /operation_settings
  # GET /operation_settings.json
  def index
    @operation_settings = OperationSetting.order( "export desc, identifier" ).all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @operation_settings }
    end
  end

  # GET /operation_settings/1
  # GET /operation_settings/1.json
  def show
    @operation_setting = OperationSetting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @operation_setting }
    end
  end

  # GET /operation_settings/new
  # GET /operation_settings/new.json
  def new
    @operation_setting = OperationSetting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @operation_setting }
    end
  end

  # GET /operation_settings/1/edit
  def edit
    @operation_setting = OperationSetting.find(params[:id])
  end

  # POST /operation_settings
  # POST /operation_settings.json
  def create
    @operation_setting = OperationSetting.new(params[:operation_setting])

    respond_to do |format|
      if @operation_setting.save
        format.html { redirect_to @operation_setting, notice: 'Operation setting was successfully created.' }
        format.json { render json: @operation_setting, status: :created, location: @operation_setting }
      else
        format.html { render action: "new" }
        format.json { render json: @operation_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /operation_settings/1
  # PUT /operation_settings/1.json
  def update
    @operation_setting = OperationSetting.find(params[:id])

    respond_to do |format|
      if @operation_setting.update_attributes(params[:operation_setting])
        format.html { redirect_to @operation_setting, notice: 'Operation setting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @operation_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operation_settings/1
  # DELETE /operation_settings/1.json
  def destroy
    @operation_setting = OperationSetting.find(params[:id])
    @operation_setting.destroy

    respond_to do |format|
      format.html { redirect_to operation_settings_url }
      format.json { head :no_content }
    end
  end
end
