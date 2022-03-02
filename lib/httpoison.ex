defmodule Request do

  def fetch_blog() do
    HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")
  end

  def get_page_url() do
    case HTTPoison.get("https://jsonplaceholder.typicode.com/todos/1") do
      {:ok, %HTTPoison.Response{status_code: 200, body: _body}}->
        IO.puts "To Do"
        {:ok, %HTTPoison.Response{status_code: 404}} ->
          IO.puts "Not found"
          {:error, %HTTPoison.Error{reason: reason}} ->
            IO.puts reason
    end
  end
end
