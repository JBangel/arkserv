defmodule Arkserv.Repo.Migrations.CreateTamedDino do
  use Ecto.Migration

  def change do
    create table(:tamed_dinos) do
      add :name, :string
      add :type_id, references(:dino_types)
      add :gender_id, references(:dino_genders)

      timestamps
    end
    create index(:tamed_dinos, [:type_id])
    create index(:tamed_dinos, [:gender_id])

  end
end
