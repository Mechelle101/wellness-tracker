require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates the presence of full_name' do
    user = User.new(f_name: 'Mechelle', l_name: 'Presnell')
    expect(user.full_name).to eq('Mechelle Presnell')
  end
end
