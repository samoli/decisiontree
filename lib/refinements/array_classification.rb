module ArrayClassification
  refine Array do
    def classification
      collect(&:last)
    end
  end
end
