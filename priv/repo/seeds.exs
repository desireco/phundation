# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rumbl.Repo.insert!(%Rumbl.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rumbl.Repo
alias Rumbl.Accounts.User
alias Rumbl.Multimedia.Category

Repo.insert(%User{name: "Jose", username: "josevalim"})
Repo.insert(%User{name: "Bruce", username: "redrapids"})
Repo.insert(%User{name: "Chris", username: "chrismccord"})
Repo.insert(%User{name: "Zeljko", username: "desireco"})

Repo.insert(%Category{name: "Test"})
