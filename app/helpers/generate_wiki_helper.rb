module GenerateWikiHelper
  def display_value( value )
    case value
    when "t"
      "true"
    when "f"
      "false"
    else
      value
    end
  end

  def value_for_identifier( identifier )
    @passed_in_settings[identifier] || OperationSetting.default_value_for( identifier )
  end

  def value?( identifier )
    value = display_value( value_for_identifier( identifier ) )
    value.present? and value != "false" and value != "0"
  end

  def any_values?( identifiers )
    !identifiers.empty? and identifiers.any? {|i| value?( i ) }
  end
end
