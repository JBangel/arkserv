defmodule Arkserv.DinoGenderTest do
  use Arkserv.ModelCase

  alias Arkserv.DinoGender

  @valid_attrs %{gender: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = DinoGender.changeset(%DinoGender{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = DinoGender.changeset(%DinoGender{}, @invalid_attrs)
    refute changeset.valid?
  end
end
