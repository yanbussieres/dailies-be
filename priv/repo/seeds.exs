# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Dailies.Repo.insert!(%Dailies.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Dailies.Entries.Win
alias Dailies.Repo

%Win{content: ["win1", "win2"]} |> Repo.insert!()

%Win{content: ["other column win1", "other column win2"]}
|> Repo.insert!()
