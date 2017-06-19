defmodule RestDemo.ApiController do
  use RestDemo.Web, :controller

  def persons(conn, _params) do
    
    persons = [
      %{id: 1, name: "Costel"},
      %{id: 2, name: "Ionel"}
    ]

    json_resp = Poison.encode!(persons)

    conn
      |> put_resp_content_type("application/json")
      |> send_resp(200, json_resp)
  end
end
