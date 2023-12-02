defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(x) do
    expected_minutes_in_oven() - x
  end

  def preparation_time_in_minutes(num_layers) do
    num_layers * 2
  end

  def total_time_in_minutes(num_layers, elapsed_time) do
    elapsed_time + preparation_time_in_minutes(num_layers)
  end

  def alarm(), do: "Ding!"
end
