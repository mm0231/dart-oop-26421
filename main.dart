class BusCard {
  String _owner = '';
  int _balance = 0;

  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  String get owner {
    return _owner;
  }

  // TODO 1
  int get balance {
    return _balance;
  }

  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2
  void topUp(int amount) {
    if (amount < 500) {
      print('Error: top-up must be 500 to 50000 RWF');
    } else if (amount > 50000) {
      print('Error: top-up must be 500 to 50000 RWF');
    } else {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    }
  }

  // TODO 3
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

void main() {
  // My numbers: D = 21, L = 1
  // Starting balance = 1210 RWF, Bus fare = 221 RWF, Discount = 11%

  BusCard card = BusCard('MOHAMMED', 1210);
  card.owner = 'Al';
  card.showInfo();

  // TODO 5
  card.owner = 'MOHAMMED MOUSSA';
  card.showInfo();

  // TODO 6
  card.topUp(100);
  card.topUp(2000);

  // TODO 7
  card.pay(221);
  card.pay(221);
  card.showInfo();

  // TODO 8
  StudentCard student = StudentCard('MOHAMMED MOUSSA', 1210, 11);

  // TODO 9
  student.pay(221);
  student.showInfo();
}
