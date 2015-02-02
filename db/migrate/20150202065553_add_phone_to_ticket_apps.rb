class AddPhoneToTicketApps < ActiveRecord::Migration
  def change
    add_column :ticket_apps, :phone, :string
  end
end
