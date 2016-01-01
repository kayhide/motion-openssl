describe OpenSSL::Random do
  describe '.random_bytes' do
    it 'returns string with given length' do
      s = OpenSSL::Random.random_bytes(10)
      s.class.should == String
      s.length.should == 10
    end
  end

  describe '.random_add' do
    it 'returns self' do
      OpenSSL::Random.random_add('some string', 0.0)
        .should == OpenSSL::Random
    end
  end
end
