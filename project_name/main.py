import fire
from loguru import logger as log


def adder(x: int, y: int) -> int:
    s = x + y
    log.debug("sum: {}", s)
    return s


def main():
    fire.Fire(adder)
