import __project-name__.main as m


def test_adder(session_fixture, per_test_fixture):
    assert session_fixture == 10
    assert per_test_fixture == 20
    assert m.adder(5, 3) == 8
