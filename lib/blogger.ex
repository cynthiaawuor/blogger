defmodule Blogger do
  @moduledoc """
  Blogger keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  #string_touppercase()params takes a list of strings and converts to uppercase
  # def string(params) do
  #  string_touppercase(params)
  # end

  def string_touppercase(params) do
   Enum.map(params, fn param -> String.upcase(param) end)
  end
end
