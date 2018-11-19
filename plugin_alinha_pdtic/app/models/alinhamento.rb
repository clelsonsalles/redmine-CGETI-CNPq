class Alinhamento < ActiveRecord::Base
  belongs_to :referencial
  has_many :comentarios
end
