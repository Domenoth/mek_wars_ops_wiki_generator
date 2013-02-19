class GenerateWikiController < ApplicationController
  def form
  end

  def upload
    @file = params[:op_file]
    if @file
      parse_file
    else
      redirect_to root_path, notice: "Please Upload a File"
    end
  end

  private

  def parse_file
    @passed_in_settings = {}
    @file.read.each_line do |line|
      key, value = line.split( "=" )
      if key.present? and value.present?
        @passed_in_settings[key.strip] = value.strip
      end
    end
  end
end
