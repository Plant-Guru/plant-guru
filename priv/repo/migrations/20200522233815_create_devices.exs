defmodule Plantguru.Repo.Migrations.CreateDevices do
  use Ecto.Migration

  def change do
    create table(:devices, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :mac, :string
      add :last_active, :utc_datetime
      add :balena_device_id, :string

      timestamps()
    end

  end
end
