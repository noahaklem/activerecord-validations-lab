class PostValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title.present? && (record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top[number]") || record.title.include?("Guess"))
            record.errors[:title] << "The title is not clickbait-y enough."
        end
    end
end