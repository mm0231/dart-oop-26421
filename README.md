# Dart OOP Assignment: Kigali Bus Card

**Name:** MOHAMMED MOUSSA
**Student ID:** 26421

## My numbers
- D = 21, L = 1
- Starting balance = 1000 + (21 x 10) = 1210 RWF
- Bus fare = 200 + 21 = 221 RWF
- Student discount = 10 + 1 = 11 percent

## Output of main.dart
```
Error: name too short
Owner: MOHAMMED | Balance: 1210 RWF
Owner: MOHAMMED MOUSSA | Balance: 1210 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 221 RWF
Paid 221 RWF
Owner: MOHAMMED MOUSSA | Balance: 2768 RWF
Student discount: 24 RWF
Paid 197 RWF
Owner: MOHAMMED MOUSSA | Balance: 1013 RWF
Student card: 11% off
```

## Part 1: Why no setter for balance?
If balance had a setter, anyone could write card.balance = 999999 and get free money. Without a setter, the balance can only change through topUp() and pay(), and both of them check rules first (top-up from 500 to 50000, and no paying more than the balance). This keeps the money safe.

## Part 2: What does ~/ do?
/ gives a decimal result: 237 * 17 / 100 prints 40.29.
~/ divides and keeps only the whole number part: 237 * 17 ~/ 100 prints 40.
We use ~/ for the discount because money in RWF is a whole number (int).

## Part 4: Bug table

| Bug | The line | Why it is wrong (my words) | My fix |
|-----|----------|----------------------------|--------|
| 1 | String _brand; int _battery; | Dart does not allow these fields to stay empty (null), so they need starting values. | String _brand = ''; int _battery = 0; |
| 2 | SmartPhone(String brand, int battery, String system) { | The parent Phone must be built first, but the constructor does not call super. | SmartPhone(String brand, int battery, String system) : super(brand, battery) { |
| 3 | @override void restart() | @override only works if the parent has that method, and Phone has no restart(). | Remove @override. |
| 4 | p.battery = 100; | Phone has a getter for battery but no setter, so it cannot be changed. | Add set battery(int value) that accepts only 0 to 100. |
| 5 | print(p.battery()); | battery is a getter, so it is used without brackets. | print(p.battery); |
| Not a bug | Phone p = new Phone('Tecno', 50); | The word new is optional in Dart, so this line works fine. | (none) |

## Part 5
My prediction:
The program prints 1 and then 5.

Why:
- For Bag a: add() makes _items 1. Then a.items = -5 is refused by the setter because -5 is less than 0. So it prints 1.
- For BigBag b: BigBag's add() calls super.add() two times, so each add() adds 2. After two calls _items is 4. Then b.items = b.items + 1 sets it to 5, and the setter accepts it. So it prints 5.

Real output:
```
1
5
```

Was I right?
Yes, my prediction was correct.
