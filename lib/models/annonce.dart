class Annonce{
  String bgImage;
  String Icon;
  String name;
  String type;
  num score;
  num review;
  String description;

  Annonce(
      this.bgImage,
      this.Icon,
      this.name,
      this.type,
      this.score,
      this.review,
      this.description,
      );

  static annonces() {
    return [
      Annonce('assets/images/ori1.jpg',
          'assets/images/ori_logo.png',
          'ori and the forest',
          'adventure',
          4.8,
          382,
          'foot que des gens chaud svp',
      ),
      Annonce('assets/images/ori1.jpg',
          'assets/images/ori_logo.png',
          'ori and the forest',
          'adventure',
          4.8,
          382,
          'foot que des gens chaud svp',
      )
    ];
  }
}