defmodule PhoundationWeb.WatchController do
  use PhoundationWeb, :controller

  alias Phoundation.Multimedia

  def show(conn, %{"id" => id}) do
    video = Multimedia.get_video!(id)
    render(conn, "show.html", video: video)
  end
end
