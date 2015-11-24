defmodule Arkserv.TamedDino do
  use Arkserv.Web, :model

  schema "tamed_dinos" do
    field :name, :string
   
    belongs_to :type, Arkserv.DinoType
    belongs_to :gender, Arkserv.DinoGender
    
    has_many :tamed_stats, Arkserv.TamedStat

    timestamps
  end

  @required_fields ~w(name type_id gender_id)
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
