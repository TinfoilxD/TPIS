class CreateApplicationForms < ActiveRecord::Migration[5.0]
  def change
    create_table :application_forms do |t|
      t.integer :candidate_id
      t.integer :training_center_id
      t.integer :course_id
      t.string :aha_instructor_motivation
      t.string :marketing_origin
      t.string :teaching_frequency
      t.boolean :owned_equipment
      t.string :class_availability
      t.string :boolean
      t.boolean :teaching_location
      t.boolean :screening_form_agreement
      t.date :date_agreed
      t.string :aha_form_agreement
      t.timestamps
    end
  end
end
