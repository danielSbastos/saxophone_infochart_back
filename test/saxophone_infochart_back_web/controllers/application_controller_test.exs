defmodule SaxophoneInfochartBackWeb.StructureControllerTest do
  use SaxophoneInfochartBackWeb.ConnCase

  test "GET /api/reed returns success", %{conn: conn} do
    test_conn = conn
    |> put_req_header("accept", "application/json")
    |> get("/api/reed")

    assert test_conn.resp_body == """
      Responsible for generating sound when the
      player puts in his mouth and vibrates it.
    """
    assert test_conn.status == 200
  end

  test "GET /api/mouthpiece returns success", %{conn: conn} do
    test_conn = conn
    |> put_req_header("accept", "application/json")
    |> get("/api/mouthpiece")

    assert test_conn.resp_body == """
      When you blow into the mouthpiece, the reed
      vibrates. It is connected to the neck.
    """
    assert test_conn.status == 200
  end

  test "GET /api/neck returns success", %{conn: conn} do
    test_conn = conn
    |> put_req_header("accept", "application/json")
    |> get("/api/neck")

    assert test_conn.resp_body == """
      It's the joint between the mouthpiece and the body. The sound generated
      by the vibrating reed enters the body through the neck.
    """
    assert test_conn.status == 200
  end

  test "GET /api/bell returns success", %{conn: conn} do
    test_conn = conn
    |> put_req_header("accept", "application/json")
    |> get("/api/bell")

    assert test_conn.resp_body == """
      The sound vibrates within the body and is amplified. By holding down the keys,
      which are located on the body, you change the length of the air column to create
      a different pitch or note. The longer the air column, the lower the corresponding
      note; the shorter the column, the higher the note.
    """
    assert test_conn.status == 200
  end

  test "GET /api/octave_pin returns success", %{conn: conn} do
    test_conn = conn
    |> put_req_header("accept", "application/json")
    |> get("/api/octave_pin")

    assert test_conn.resp_body == """
      It's a special key found on the neck of the saxophone that pivots on the
      octave pin. This key helps the player achieve different registers on the saxophone.
    """
    assert test_conn.status == 200
  end

  test "GET /api/neck_strap returns success", %{conn: conn} do
    test_conn = conn
    |> put_req_header("accept", "application/json")
    |> get("/api/neck_strap")

    assert test_conn.resp_body == """
      It's a strap worn around the player’s neck. Its lets the player carry the
      saxophone and supports the instrument so the fingers can move freely over the keys.
    """
    assert test_conn.status == 200
  end
end