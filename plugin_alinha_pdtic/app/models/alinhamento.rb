class Alinhamento < ActiveRecord::Base
  belongs_to :referencial
  belongs_to :project
  has_many :comentarios
end
