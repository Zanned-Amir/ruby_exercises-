
require './lib/Caesar_Cipher'

describe "#Caesar_Cipher" do
    it "returns 'Bmfy f xywnsl!' when given 'What a string!' and 5" do
        expect(Caesar_Cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
    end