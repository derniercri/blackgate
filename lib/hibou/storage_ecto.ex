defmodule Hibou.StorageEcto do
  alias Hibou.Model.User
  alias Hibou.Model.Client
  alias Hibou.Model.Authorization

  import Hibou.Config

  import Ecto.Query, warn: false

  def get_user_by_id!(id), do: repo().get!(User, id)

  def get_user_by_username(username),
    do: repo().one(from(u in User, where: u.email == ^username or u.username == ^username))

  def get_client_by_id(id), do: repo().one(from(c in Client, where: c.id == ^id))

  def get_authorization_by_code(code),
    do:
      repo().one(from(a in Authorization, where: a.code == ^code))
      |> repo().preload([:user, :client])
end
