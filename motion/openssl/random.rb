module OpenSSL
  module Random
    def self.random_bytes length
      fail ArgumentEror, 'negative string size (or size too big)' if length < 0
      s = ' ' * length
      ret = RAND_bytes(s, length)
      unless ret == 1
        fail 'RAND_bytes error'
      end
      s
    end

    def self.random_add str, entropy
      RAND_add(str, str.length, entropy)
      self
    end
  end
end
