# frozen_srting_literal: true

# class User
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :first_name, presence: true
  #validates :last_name, presence: true
  #validates :weight, presence: true, numericality: { greater_than: 5 }
  #validates :height, presence: true, numericality: { greater_than: 50, less_than: 270 }
  #validates :birthday, presence: true, date: { before: Proc.new { Date.today } }
  #validates :hiking_count, presence: true
  #validates :about_me, length: { maximum: 500 }
  #validates :phone, presence: true, length: { in: 5..12 }

  belongs_to :physical_condition
end