module ArrayEntropy
  refine Array do
    def entropy
      each_with_object(Hash.new(0)) do |i, result|
        result[i] += 1
      end.values.inject(0, :+) do |count|
        percentage = count.to_f / length

        -percentage * Math.log2(percentage)
      end
    end
  end
end
