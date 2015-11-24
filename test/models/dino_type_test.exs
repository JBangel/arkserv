defmodule Arkserv.DinoTypeTest do
  use Arkserv.ModelCase

  alias Arkserv.DinoType

  @valid_attrs %{family: "some content", type: "some content", tameable: true}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = DinoType.changeset(%DinoType{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = DinoType.changeset(%DinoType{}, @invalid_attrs)
    refute changeset.valid?
  end
end
