defmodule Arkserv.TamedDinoTest do
  use Arkserv.ModelCase

  alias Arkserv.TamedDino

  @valid_attrs %{name: "some content", type_id: 1, gender_id: 1}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = TamedDino.changeset(%TamedDino{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TamedDino.changeset(%TamedDino{}, @invalid_attrs)
    refute changeset.valid?
  end
end
