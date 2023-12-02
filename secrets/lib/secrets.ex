defmodule Secrets do

  def secret_add(x) do
    fn y -> y + x end
  end

  def secret_subtract(x) do
    fn y -> y - x end
  end

  def secret_multiply(x) do
    fn y -> y * x end
  end

  def secret_divide(x) do
    fn y -> trunc(y / x) end
  end

  def secret_and(x) do
    fn y -> Bitwise.band(y, x) end
  end

  def secret_xor(x) do
    fn y -> Bitwise.bxor(y, x) end
  end

  def secret_combine(fa, fb) do
    fn y -> fb.(fa.(y)) end
  end
end