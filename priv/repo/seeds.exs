# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Phoundation.Repo.insert!(%Phoundation.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Phoundation.Repo
alias Phoundation.Accounts.User
alias Phoundation.Multimedia

Repo.insert(%User{name: "Jose", username: "josevalim"})
Repo.insert(%User{name: "Bruce", username: "redrapids"})
Repo.insert(%User{name: "Chris", username: "chrismccord"})
Repo.insert(%User{name: "Zeljko", username: "desireco"})

for category <- ~w(Action Drama Romance Comedy Sci-fi) do
  Multimedia.create_category!(category)
end
