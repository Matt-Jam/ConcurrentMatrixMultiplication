defmodule Matrices do

  def matrixAcessor(l,r,c) do
    Enum.at(Enum.at(l,r-1),c-1)
  end

  def init(l) do
    &matrixAcessor(l, &1, &2)
  end


end

mymat = Matrices.init([[1,2],[3,4]])
IO.puts(mymat.(1,1))
