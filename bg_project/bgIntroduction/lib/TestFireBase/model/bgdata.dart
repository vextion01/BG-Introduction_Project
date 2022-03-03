class bgdata {
  final String numberOfBoardGames;
  String typeBoardGame;
  String nameBoardGame;
  String maximumNumberOfPlayers;
  String playTimePerRound;
  String howToPlayLink;
  
  //testimportgooglesheet

 bgdata(this.numberOfBoardGames, this.typeBoardGame, this.nameBoardGame, this.maximumNumberOfPlayers, this.playTimePerRound, this.howToPlayLink, );
}

// bgdata.fromJson(Map<dynamic,dynamic> json){ 
//        numberOfBoardGames = json['numberOfBoardGames'] as String,
//         typeBoardGame = json['typeBoardGame'] as String ,
//         nameBoardGame = json['nameBoardGame'] as String ,
//         maximumNumberOfPlayers = json['maximumNumberOfPlayers'] as String ,
//         playTimePerRound = json['playTimePerRound'] as String ,
//         howToPlayLink = json['howToPlayLink'] as String;


// bgdata.fromJson(Map<dynamic, dynamic> json)
//     : numberOfBoardGames = DateTime.parse(json['date'] as String),
//       text = json['text'] as String;
