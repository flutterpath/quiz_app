class UnboardingContent {
  String image;
  String title;
  String discription;

  UnboardingContent({this.image, this.title, this.discription});
}

List<UnboardingContent> contents = [
 UnboardingContent(
   title: "Submit Sucsses",
   image: "images/Submit.png",
   discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore"
),

  UnboardingContent(
      title: "Payment Sucsses",
      image: "images/Payment.png",
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore"
  ),

  UnboardingContent(
      title: "Registration Sucsses",
      image: "images/Registration.png",
      discription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore"
  ),

];

