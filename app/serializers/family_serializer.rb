class FamilySerializer < ActiveModel::Serializer
  attributes :id, :phone, :relationship, :numofvisits, :photo, :notes, :hide
  has_one :city
end
