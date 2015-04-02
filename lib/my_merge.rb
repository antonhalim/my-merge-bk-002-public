class Hash

	def my_merge(hash)
		result = {}
		self.keys.each{|x| result[x] = self[x]}
		self.each do |k,v|
			if block_given? && hash[k]
				result[k] = yield k, self[k], hash[k]
			else
				hash.keys.each{|x| result[x] = hash[x]}
			end
		end
		result.sort.to_h
	end

end
