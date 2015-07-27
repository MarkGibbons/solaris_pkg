RSpec.describe 'solaris_pkg::pkg_sol_noask' do
  include ChefRun

  it 'converges successfully' do
    expect(chef_run).to include_recipe(described_recipe)
  end

  it 'creates the noask file' do
    expect(chef_run).to render_file('/var/sadm/install/admin/nocheck')
  end
end
