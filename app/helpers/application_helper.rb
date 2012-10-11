module ApplicationHelper
  
  def escape_single_quote (str)
    str.gsub(/\\|'/) { |c| "\\#{c}" }
  end
  
end
