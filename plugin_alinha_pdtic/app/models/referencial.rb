class Referencial < ActiveRecord::Base
  validates :identificador, presence: true
  has_many :alinhamentos
  has_many :filhos, class_name: "Referencial",
                          foreign_key: "principal_id" 

  belongs_to :principal, class_name: "Referencial" 
end
