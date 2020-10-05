defmodule PhoundationWeb.UserView do
  use PhoundationWeb, :view

  alias Phoundation.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
