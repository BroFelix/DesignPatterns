from abc import ABC, abstractmethod
from __future__ import annotations


class Chair(ABC):
    @abstractmethod
    def hasLegs(self) -> bool:
        pass

    @abstractmethod
    def sitOn(self):
        pass


class Table(ABC):
    pass


class Sofa(ABC):
    pass


class FurnitureFactory(ABC):
    @abstractmethod
    def createChair() -> Chair:
        pass

    @abstractmethod
    def createTable() -> Table:
        pass

    @abstractmethod
    def createSofa() -> Sofa:
        pass
