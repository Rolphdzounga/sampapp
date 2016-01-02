module ApplicationHelper
# Retourner un titre basé sur la page.
  def titre
    base_titre = "Simple App du Tutoriel Ruby on Rails"
    if @titre.nil?
      base_titre
    else
      "#{@titre} | #{base_titre}"
    end
  end


  # Returns the full title on a per-page basis.
	def full_title(page_title = '')
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty?
	base_title
	else
	page_title + " | " + base_title
	end
	end
end
