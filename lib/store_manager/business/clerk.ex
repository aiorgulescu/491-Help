defmodule StoreManager.Business.Clerk do
  use Ecto.Schema
  import Ecto.Changeset

  alias StoreManager.Business.Store

  schema "clerks" do
    field :name, :string
    belongs_to :store, Store

    timestamps()
  end

  @doc false
  def changeset(clerk, attrs) do
    clerk
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
