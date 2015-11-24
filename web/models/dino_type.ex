defmodule Arkserv.DinoType do
  use Arkserv.Web, :model

  schema "dino_types" do
    field :type, :string
    field :family, :string
    field :tameable, :boolean, default: true

    timestamps
  end

  @required_fields ~w(type family tameable)
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
