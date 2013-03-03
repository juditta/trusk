module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "TRUSK"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def number_to_zl(amount)
  	number_to_currency(amount, :unit=>'zl', :precision => 2, format: "%n %u")
  end

  def each_with_index_from_one(*args, &pr)
    each_with_index(*args){|obj, i| pr.call(obj, i+1)}
  end
end
