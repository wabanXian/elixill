defmodule Elixill.Postcontroller do
use Elixill,:controller
def index(conn,_param) do
    posts = elixill.PostRepo.all()
    render conn,"index.html",posts:posts
end
def show(%{id=>id}) do
    case elixill.PostRepo.get(id) do
        {:ok,posts} -> render conn ,"show.html",posts:post
        {:error,_} -> render conn, "404.html"
    end
end
end