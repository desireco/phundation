defmodule PhoundationWeb.PageControllerTest do
  use PhoundationWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoundation!"
  end
end
