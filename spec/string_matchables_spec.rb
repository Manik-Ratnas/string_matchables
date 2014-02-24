# encoding: UTF-8
require 'string_matchables'
 describe "StringMatchables" do
  it "should indicate special characters found in a string" do
   "Tata Consulting Services".matches.should include("TCS")
   "Tata Consulting Services".matches.should include("Tata")
   "Tata Consulting Services".matches.should include("T.C.S")
   "Tata Consulting Services".matches.should include("T-C-S")
   "Tata Consulting Services".matches.should include("TataConsultingServices")


   "".matches.should eq("")
   "  ".matches.should eq("")

 end

end
