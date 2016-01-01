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
end
