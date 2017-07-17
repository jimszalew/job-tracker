require 'rails_helper'

RSpec.describe Contact do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without a name" do
        contact = Contact.new(position: "HR", email: "j@gmail.com")
        expect(contact).to be_invalid
      end

      it "is invalid without a position" do
        contact = Contact.new(name: "JJ", email: "j@gmail.com")
        expect(contact).to be_invalid
      end

      it "is invalid without an email" do
        contact = Contact.new(name: "JJ", position: "HR")
        expect(contact).to be_invalid
      end
    end
  end
end
