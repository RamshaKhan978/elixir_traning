defmodule KV.Bucket do
  use Agent, restart: :temporary

  def start_link(_opt) do
    Agent.start_link(fn -> %{} end)
  end

  def put(bucket, key, value) do
    Agent.update(bucket, &Map.put(&1, key, value) )
  end

   def get(bucket, key) do
     Agent.get(bucket, &Map.get(&1, key))
   end

   def delete(bucket, key) do
     Agent.get_and_update(bucket, &Map.pop(&1, key))
   end

    def delete1(bucket, key)do
      Process.sleep(1000) #client side will be on sleep
      Agent.get_and_update(bucket, fn dict ->
        Process.sleep(1000)# server side is on sleep
        Map.pop(dict, key)
      end)
    end
end
