defmodule Arkserv.TamedStatTest do
  use Arkserv.ModelCase

  alias Arkserv.TamedStat

  @valid_attrs %{dino_id: 1, food: "120.5", hp: "120.5", initial_stats: true, level: 42, melee: "120.5", move_speed: "120.5", oxygen: "120.5", stamina: "120.5", torpor: "120.5", weight: "120.5", dino: 1}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = TamedStat.changeset(%TamedStat{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = TamedStat.changeset(%TamedStat{}, @invalid_attrs)
    refute changeset.valid?
  end
end
