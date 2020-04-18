handle_result = fn
  {:ok, result} -> IO.puts("Handling result...")
  {:ok, _} -> IO.puts("This would never run as previous will be matched beforehand.")
  {:error} -> IO.puts("An error has occurred!")
end

some_result = 1
handle_result.({:ok, some_result})

handle_result.({:error})
