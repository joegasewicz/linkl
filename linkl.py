import pyximport
pyximport.install()

from typing import Any

from wrap_linkl import _LinkL


class LinkL:

    node: Any

    def __init__(self, data):
        self.node = _LinkL(data)

    def get_data(self) -> dict:
        return self.node.get_data()

    def insert(self, data) -> int:
        return self.node.insert(data)


if __name__ == "__main__":
    l = LinkL({"name": "joe"})
    result = l.get_data()
    result = l.get_data()
    print("result: ", result)
    l.insert({"name2": "sam"})
    result = l.get_data()
    print("result: ", result)

