# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Arkserv.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Arkserv.Repo
alias Arkserv.DinoGender
alias Arkserv.DinoType
alias Arkserv.TamedDino
alias Arkserv.TamedStat

%DinoGender{}
    |> DinoGender.changeset(%{gender: "Ungendered"})
    |> Repo.insert!

%DinoGender{}
    |> DinoGender.changeset(%{gender: "Male"})
    |> Repo.insert!

female = %DinoGender{}
    |> DinoGender.changeset(%{gender: "Female"})
    |> Repo.insert!

%DinoType{}
    |> DinoType.changeset(%{type: "Pteradon", family: "Reptile", tameable: true})
    |> Repo.insert!

%DinoType{}
    |> DinoType.changeset(%{type: "Doedicurus", family: "Mammal", tameable: true})
    |> Repo.insert!

%DinoType{}
    |> DinoType.changeset(%{type: "Dimorphodon", family: "Reptile", tameable: true})
    |> Repo.insert!

%DinoType{}
    |> DinoType.changeset(%{type: "Rex", family: "Dinosaur", tameable: true})
    |> Repo.insert!

quetzal = %DinoType{}
    |> DinoType.changeset(%{type: "Quetzal", family: "Reptile", tameable: true})
    |> Repo.insert!

macha = %TamedDino{}
    |> TamedDino.changeset(%{name: "Macha", type_id: quetzal.id, gender_id: female.id})
    |> Repo.insert!

doed = %DinoType{}
    |> DinoType.changeset(%{type: "Doedicurus", family: "Mammal", tameable: true})
    |> Repo.insert!

%TamedStat{}
    |> TamedStat.changeset(%{tamed_dino_id: macha.id, level: 154, hp: 14806.2, stamina: 2175, oxygen: 315, food: 3588, weight: 1082.4, melee: 1097.6, move_speed: 136.5, torpor: 100})
    |> Repo.insert!

slammer = %TamedDino{}
    |> TamedDino.changeset(%{name: "Slammer", type_id: doed.id, gender_id: female.id})
    |> Repo.insert!

%TamedStat{}
    |> TamedStat.changeset(%{tamed_dino_id: slammer.id, level: 79, hp: 3230.5, stamina: 330, oxygen: 165, food: 6900, weight: 255, melee: 315, move_speed: 225, torpor: 100})
    |> Repo.insert!

