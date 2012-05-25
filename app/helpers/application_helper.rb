module ApplicationHelper
  LETTERS = ('A'..'Z').to_a << '#'

  def search_form path, options={}
    content_tag :div, :class => "#{options[:class]} search-form" do
      form_tag path, :method => :get do
        content_tag :p do
          concat text_field_tag :search, '', placeholder: options[:placeholder], class: 'filter-text'
          concat submit_tag "", :name => nil, class: 'btn filter-btn', style: 'display:none;'
        end
      end
    end
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def sort_arrow
    return content_tag :span, '', :class => 'icon-chevron-down' if params[:sort].blank?
    return content_tag :span, '', :class => 'icon-chevron-up' if params[:sort].eql?('asc')
    return content_tag :span, '', :class => 'icon-chevron-down' if params[:sort].eql?('desc')
  end

  def alpha_pag(current_letter, options={})
    LETTERS.each do |letter|
      if current_letter == letter || letter == 'A' && current_letter.nil?
        concat content_tag :li, link_to(letter, "#"), :class => 'disabled'
      else
        concat content_tag :li, link_to(letter, "?filter=#{letter == '#' ? 'num' : letter}")
      end
    end
    return nil
  end

  def clean_description(string)
    if string.blank?
      return ''
    else
      if string.include? 'Plot Sumary:'
        string = string.gsub('Plot Sumary:', '')
      end

      return string
    end
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def is_moderator?
    signed_in? && current_user.settings.is_moderator
  end

  def is_admin?
    signed_in? && current_user.settings.is_admin
  end

end
