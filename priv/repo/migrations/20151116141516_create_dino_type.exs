defmodule Arkserv.Repo.Migrations.CreateDinoType do
  use Ecto.Migration

  def change do
    create table(:dino_types) do
      add :type, :string
      add :family, :string
      add :tameable, :boolean, default: true

      timestamps
    end

  end
end
