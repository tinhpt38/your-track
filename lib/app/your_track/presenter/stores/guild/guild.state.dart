abstract class GuildState {
  final int currentSide;
  GuildState(this.currentSide);
}

class GuildInitState extends GuildState {
  GuildInitState(int currentSide) : super(currentSide);
}

class GuildDataState extends GuildState {
  GuildDataState(int currentSide) : super(currentSide);
}
