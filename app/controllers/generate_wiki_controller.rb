class GenerateWikiController < ApplicationController
  layout false
  def form
  end

  def another_file
  end

  def upload
    @files = params[:op_file]
    if @files.present?
      io_string = parse_files
      io_string.rewind
      send_data io_string.read, filename: "wiki_ops.zip", type: "text/zip"
    else
      redirect_to root_path, notice: "Please Upload a File"
    end
  end

  private

  def parse_files
    Zip::ZipOutputStream::write_buffer do |zipfile|
      @files.each do |op_file|
        if op_name( op_file )
          zipfile.put_next_entry( op_name( op_file ) )
          zipfile.write( parse_file( op_file ) )
        end
      end
    end
  end

  def parse_file( op_file )
    @passed_in_settings = {}
    op_file.read.each_line do |line|
      key, value = line.split( "=" )
      if key.present? and value.present?
        @passed_in_settings[key.strip] = value.strip
      end
    end
    render_to_string :upload
  end

  def op_name( op_file )
    match = op_file.original_filename.match /\A(.*)\.txt\Z/
    match.try( :[], 1 )
  end
end
