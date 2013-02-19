class OperationSetting < ActiveRecord::Base
  attr_accessible :display, :identifier, :value

  belongs_to :operation_type

  def self.default_value_for( identifier )
    find_by_identifier( identifier ).try( :default_value )
  end
end
