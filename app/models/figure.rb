class Figure < ActiveRecord::Base
has_many :landmarks
<<<<<<< HEAD
has_many :figure_titles
=======
has_many :figurestitles
>>>>>>> origin/controllers_editing
has_many :titles, through: :figure_titles
end
