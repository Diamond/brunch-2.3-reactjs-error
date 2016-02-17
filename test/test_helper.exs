ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Pxreact.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Pxreact.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Pxreact.Repo)

