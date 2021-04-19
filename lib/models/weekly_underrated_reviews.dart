class WeeklyUnderratedReviews {
  String fotograf;
  String date;
  String groupName;
  String authorName;
  String urlName;
  String ozellikler;

  WeeklyUnderratedReviews(this.fotograf, this.date, this.groupName,
      this.authorName, this.urlName, this.ozellikler);

  String get getFotograf => this.fotograf;

  set setFotograf(String fotograf) => this.fotograf = fotograf;

  get getDate => this.date;

  set setDate(date) => this.date = date;

  get getGroupName => this.groupName;

  set setGroupName(groupName) => this.groupName = groupName;

  get getAuthorName => this.authorName;

  set setAuthorName(authorName) => this.authorName = authorName;

  get getUrlName => this.urlName;

  set setUrlName(urlName) => this.urlName = urlName;

  get getOzellikler => this.ozellikler;

  set setOzellikler(ozellikler) => this.ozellikler = ozellikler;
}
