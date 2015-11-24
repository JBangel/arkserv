defmodule Arkserv.TamedStat do
  use Arkserv.Web, :model

  schema "tamed_stats" do
    field :level, :integer
    field :initial_stats, :boolean, default: false
    field :hp, :float
    field :stamina, :float
    field :oxygen, :float
    field :food, :float
    field :weight, :float
    field :melee, :float
    field :move_speed, :float
    field :torpor, :float
    
    belongs_to :tamed_dino, Arkserv.TamedDino, references: :tamed_dinos

    timestamps
  end

  @required_fields ~w(tamed_dino_id level initial_stats hp stamina oxygen food weight melee move_speed torpor)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
