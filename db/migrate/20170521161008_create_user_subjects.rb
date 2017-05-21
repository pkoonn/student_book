class CreateUserSubjects < ActiveRecord::Migration[5.0]
    def change
        create_table "user_subject", force: :cascade do |t|
            t.references :user
            t.references :subject
            t.timestamps
        end
    end
end
