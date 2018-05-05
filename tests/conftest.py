import pytest


@pytest.fixture(scope='session')
def session_fixture():
    """Fixture that runs once per test session.
    """
    return 10


@pytest.fixture
def per_test_fixture():
    return 20
