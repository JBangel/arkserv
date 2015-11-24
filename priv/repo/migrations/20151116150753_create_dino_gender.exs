defmodule Arkserv.Repo.Migrations.CreateDinoGender do
  use Ecto.Migration

  def change do
    create table(:dino_genders) do
      add :gender, :string

      timestamps
    end

  end
end
