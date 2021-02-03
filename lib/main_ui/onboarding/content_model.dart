class UnbordingContent {
  String image;
  String title;
  String discription;
  String text;

  UnbordingContent({this.image, this.title, this.discription, this.text});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Get Started\nwith us',
      image: 'assets/bgImage1.png',
      discription: "Have fun testing your\nexpertise with this general\nknowledge quiz!",
    text: "",
  ),
  UnbordingContent(
      title: 'Learning with\nnew method',
      image: 'assets/bgImage2.png',
      discription: "Even with advancements in\ntechnology and\nteaching methods,",
    text: "",
  ),
  UnbordingContent(
    title: 'Lets join\nus to new era',
    image: 'assets/bgImage3.png',
    discription: "The letter-signing\nmovements in this new\nera have made.",
    text: "Login",
  ),
];