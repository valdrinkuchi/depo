class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :masqueradable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable

  has_one_attached :avatar
  has_person_name

  has_many :notifications, as: :recipient
  has_many :services
  has_many :outgoinginvoices
  has_many :incoming_invoices
  has_many :payments
  has_many :customers
  has_many :payments
  has_many :suppliers
  has_many :brands
  has_many :documents
end
