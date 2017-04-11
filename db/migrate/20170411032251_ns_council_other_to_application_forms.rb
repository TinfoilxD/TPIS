class NsCouncilOtherToApplicationForms < ActiveRecord::Migration[5.0]
  def change
    add_column :application_forms, :ns_council_other, :string
  end
end
