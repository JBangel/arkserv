defmodule Arkserv.Repo.Migrations.CreateTamedStat do
  use Ecto.Migration

  def change do
    create table(:tamed_stats) do
      add :level, :integer
      add :initial_stats, :boolean, default: false
      add :hp, :float
      add :stamina, :float
      add :oxygen, :float
      add :food, :float
      add :weight, :float
      add :melee, :float
      add :move_speed, :float
      add :torpor, :float
      add :tamed_dino_id, references(:tamed_dinos)

      timestamps
    end
    create index(:tamed_stats, [:tamed_dino_id])

  end
end
