RSpec.describe WholeNumber do
  it "has a version number" do
    expect(WholeNumber::VERSION).not_to be nil
  end

  context 'Integer' do
    let(:fixnum_max){(2**(0.size * 8 -2) -1)}
    it{expect(fixnum_max.to_whole_num).to eq fixnum_max}
    it{expect((fixnum_max+1).to_whole_num).to eq (fixnum_max+1)}

    it{expect(100.to_whole_num).to eq 100}
    it{expect(3.to_whole_num).to eq 3}
    it{expect(2.to_whole_num).to eq 2}
    it{expect(1.to_whole_num).to eq 1}
    it{expect(0.to_whole_num).to eq 0}
    it{expect(-1.to_whole_num).to eq 0}
    it{expect(-2.to_whole_num).to eq 0}
    it{expect(-3.to_whole_num).to eq 0}
    it{expect(-100.to_whole_num).to eq 0}

    let(:fixnum_min){-(2**(0.size * 8 -2))}
    it{expect((fixnum_min).to_whole_num).to eq 0}
    it{expect((fixnum_min-1).to_whole_num).to eq 0}
  end

  context 'Float' do
    it{expect(2.0.to_whole_num).to eq 2}
    it{expect(1.9.to_whole_num).to eq 1}
    it{expect(1.1.to_whole_num).to eq 1}
    it{expect(1.0.to_whole_num).to eq 1}
    it{expect(0.9.to_whole_num).to eq 0}
    it{expect(0.0.to_whole_num).to eq 0}
    it{expect(-0.9.to_whole_num).to eq 0}
    it{expect(-1.0.to_whole_num).to eq 0}
    it{expect(-1.1.to_whole_num).to eq 0}
  end

end
