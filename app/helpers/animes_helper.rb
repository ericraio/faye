module AnimesHelper

  def sort_anime
    return link_to 'Anime List', '?sort=desc', id: 'sort-desc' if params[:sort].blank?
    return link_to 'Anime List', '?sort=desc', id: 'sort-desc'if params[:sort].eql?('asc')
    return link_to 'Anime List', '?sort=asc', id: 'sort-asc' if params[:sort].eql?('desc')
  end


end
