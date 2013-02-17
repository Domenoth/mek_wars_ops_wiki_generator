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
end
