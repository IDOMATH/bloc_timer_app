// Ticker is the data source for the timer.  It exposes a stream of
// ticks that we can subscribe and react to.

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1).take(ticks);
  }
}