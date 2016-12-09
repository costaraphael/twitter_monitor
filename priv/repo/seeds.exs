TwitterMonitor.Repo.delete_all TwitterMonitor.User

TwitterMonitor.User.changeset(%TwitterMonitor.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> TwitterMonitor.Repo.insert!
|> Coherence.ControllerHelpers.confirm!
