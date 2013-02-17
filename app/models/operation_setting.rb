class OperationSetting < ActiveRecord::Base
  attr_accessible :display, :identifier, :value

  belongs_to :operation_type
end
