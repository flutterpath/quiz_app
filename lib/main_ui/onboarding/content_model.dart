class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Get Started\nwith us',
      image: 'assets/bgImage1.png',
      discription: "Lorem ipsum dolor sit\namet,adipiscing elit, sed\nincididunt ut labore et."
  ),
  UnbordingContent(
      title: 'Learning with\nnew method',
      image: 'assets/bgImage2.png',
      discription: "Lorem ipsum dolor sit\namet,adipiscing elit, sed\nincididunt ut labore et."
  ),
  UnbordingContent(
    title: 'Lets join\nus to new era',
    image: 'assets/bgImage3.png',
    discription: "Lorem ipsum dolor sit\namet,adipiscing elit, sed\nincididunt ut labore et.",
  ),
];