# Dart OOP Assignment: Kigali Bus Card

**Name:** MOHAMMED MOUSSA
**Student ID:** 26421

## Part 5

My prediction:
The program prints 1 and then 5.

Why:
- For Bag a: add() makes _items 1. Then a.items = -5 is refused by the setter because -5 is less than 0. So it prints 1.
- For BigBag b: BigBag's add() calls super.add() two times, so each add() adds 2. After two calls _items is 4. Then b.items = b.items + 1 sets it to 5, and the setter accepts it. So it prints 5.

Real output:

Was I right?
