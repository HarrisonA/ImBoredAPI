class FamilySerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :relationship, :numofvisits, :photo, :notes, :hide
  has_one :city
end
