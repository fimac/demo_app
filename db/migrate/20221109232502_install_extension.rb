class InstallExtension < ActiveRecord::Migration[7.0]
  def up
    Protect::DatabaseExtensions.install
  end

  def down
    Protect::DatabaseExtensions.remove
  end
end
