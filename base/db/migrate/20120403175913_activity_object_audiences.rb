class ActivityObjectAudiences < ActiveRecord::Migration
  def change
    create_table :activity_object_audiences do |t|
      t.references :activity_object
      t.references :relation
    end

    add_foreign_key :activity_object_audiences, :activity_objects, :name => 'activity_object_audiences_on_activity_object_id'
    add_foreign_key :activity_object_audiences, :relations, :name => 'activity_object_audiences_on_relation_id'
  end
end
