require "spec_helper"
#require_relative '../lib/hello'

describe '四則演算' do
    describe '足し算' do
        it '1 + 1 は 2 になること' do
            expect(1 + 1).to eq 2
        end
    end

    describe '引き算' do
        it '10 - 9 は1となること' do
            expect(10- 1).to eq 9
        end
    end
end

RSpec.describe Hello do
    describe '#greet' do
        let(:hello){Hello.new(name: 'たろう', age: age)}
        subject {hello.greet}
        context'12歳以下の場合' do
            let(:age){ 12 }
            it 'ひらがなで答えること' do
                is_expected.to eq 'ぼくはたろうだよ。'
            end
        end
        context '13歳以上の場合' do
            let(:age){ 13 }
            it '漢字で答えること' do
                is_expected.to eq 'ぼくはたろうです。'
            end
        end
    end
end

