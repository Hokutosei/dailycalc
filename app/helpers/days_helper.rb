module DaysHelper

  def animateEntry(dom, object)
    if @object == @current_item
      content_tag_for(dom, object, :class => 'current_item')
    else
      content_tag_for(dom, object)
    end

  end

end
