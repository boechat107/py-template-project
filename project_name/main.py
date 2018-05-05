import fire


def adder(x: int, y: int) -> int:
    s = x + y
    print("sum: %s" % s)
    return s


def main():
    fire.Fire(adder)
