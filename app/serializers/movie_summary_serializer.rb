class MovieSummarySerializer < ActiveModel::Serializer
    attributes :id, :title, :summary
  
    def summary
      "#{object.title} - #{object.description[0..49]}..."
    end
  end