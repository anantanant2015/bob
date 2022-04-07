defmodule Bob do

  @lower_caps_regex ~r/[a-z]/

  @moduledoc """
  Documentation for `Bob`.
  """

  @doc """
  Sending message to Bob.

  ## Examples

      iex> Bob.message("")
      "Fine. Be that way!"

  """
  def message(content) when is_binary(content) do
    is_empty = (String.length(content) == 0)
    is_question = (String.ends_with?(content, "?"))
    all_caps = (!String.match?(content, @lower_caps_regex))

    case {is_empty, is_question, all_caps} do
      {true, _, _} ->
        "Fine. Be that way!"

      {_, true, true} ->
        "Calm down, I know what I’m doing!"

      {_, true, false} ->
        "Sure."

      {_, false, true} ->
        "Whoa, chill out!"

      {_, _, _} ->
        "Whatever."
    end
  end

  def message(_), do: "Whatever."

  def message(), do: "Whatever."
end
