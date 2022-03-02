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
    params
    |>Enum.each(String.upcase(params))
    # params_split=String.split(params, " ")
    # params_split
    # |> String.upcase()
    #  Enum.join(params_to_uppercase)
  end
  def capitalize(words) do
    words_split=String.split(words, " ")
    capitalize_words=Enum.map(words_split, &String.capitalize/1)
    Enum.join(capitalize_words, " ")
  end
end
