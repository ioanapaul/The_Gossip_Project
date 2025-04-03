class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
  has_many :comments
  has_many :private_messages  # C'est pour les messages envoyés par l'utilisateur
  has_many :likes

  # Relation pour les messages privés reçus (destinataires)
  has_and_belongs_to_many :received_private_messages, 
                          class_name: 'PrivateMessage', 
                          join_table: 'private_messages_users', 
                          foreign_key: 'user_id', 
                          association_foreign_key: 'private_message_id'
end
