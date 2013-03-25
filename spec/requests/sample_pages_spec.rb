require 'spec_helper'

describe "Sample pages" do

subject { page }

  describe "Sample page" do
    before { visit sample_path }

    it { should have_selector('h1',    :text => 'Sample Page') }
    it { should have_selector('title', :text => full_title('Sample Page')) }
  end
end