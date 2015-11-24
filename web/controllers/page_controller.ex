defmodule Arkserv.PageController do
  use Arkserv.Web, :controller

  alias Arkserv.TamedDino

  def index(conn, _params) do
    dinos = Repo.all(TamedDino)
    |> Repo.preload [:gender, :type, :tamed_stats]

    current_dinos = Enum.map(dinos, fn(x) ->
        stats = Enum.max_by(x.tamed_stats, fn(x) -> 
            x.level
        end)

        %{
            id: x.id,
            name: x.name,
            level: stats.level,
            gender: x.gender.gender,
            stats: stats
        }
    end)

    render conn, "index.html", dinos: current_dinos
  end

  def show(conn, %{"id" => id}) do
    dino = Repo.get!(TamedDino, id)
    |> Repo.preload [:gender, :type, :tamed_stats]

    dino = %{dino | :gender => dino.gender.gender}

    stats = Enum.max_by(dino.tamed_stats, fn(x) -> 
        x.level
    end)

    conn
    |> assign(:dino, dino)
    |> assign(:stats, stats)
    |> render "show.html"
   
  end
end
