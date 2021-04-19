class AlbumReviews {
  String fotograf;
  String groupName;
  String albumName;
  String authorName;
  String urlName;
  String ozellikler;

  AlbumReviews(this.fotograf, this.groupName, this.albumName, this.authorName,
      this.urlName, this.ozellikler);

  String get getFotograf => this.fotograf;

  set setFotograf(String fotograf) => this.fotograf = fotograf;

  get getGroupName => this.groupName;

  set setGroupName(groupName) => this.groupName = groupName;

  get getAlbumName => this.albumName;

  set setAlbumName(albumName) => this.albumName = albumName;

  get getAuthorName => this.authorName;

  set setAuthorName(authorName) => this.authorName = authorName;

  get getUrlName => this.urlName;

  set setUrlName(urlName) => this.urlName = urlName;

  get getOzellikler => this.ozellikler;

  set setOzellikler(ozellikler) => this.ozellikler = ozellikler;
}
