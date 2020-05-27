defmodule Plantguru.Repo.Migrations.CreateUserDevices do
    use Ecto.Migration

    def change do
      create table(:user_device, primary_key: false) do
        add(:device_id, references(:devices, on_delete: :delete_all, type: :uuid), primary_key: true)
        add(:user_id, references(:users, on_delete: :delete_all), primary_key: true)
        timestamps()
      end

      create(index(:user_device, [:device_id]))
      create(index(:user_device, [:user_id]))

      create(
        unique_index(:user_device, [:user_id, :device_id], name: :user_id_device_id_unique_index)
      )
    end
  end