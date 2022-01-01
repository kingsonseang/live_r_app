class Member {
  // creating the class
  String image; // member image
  String name; // member name
  String about; // about member
  String phone; // member phone number
  String email; // member email

// register the values of the class
  Member({
    required this.image,
    required this.name,
    required this.about,
    required this.phone,
    required this.email,
  });
}

// create an instance of the class
var precious = Member(
  image: 'images/logo.png',
  name: 'Precious Odigie',
  about: 'i am precious',
  email: 'precius@example.com',
  phone: '+2345678901234',
);

// create an instance of the class
var amaka = Member(
  image: 'image/amaka.jpg',
  name: 'Chukwuemeka Chiamaka',
  about: 'Hi, I am Chukwuemeka Chiamaka. I am a student of Lincoln College of Science, Management and Tecnology January Intake. I contributed to this project by designing the mock up of the project and implementing the home page.',
  email: 'amibaby411@gmial.com',
  phone: '+234 706 907 7858',
);

// var nichole = Member(
//   image: 'images/liverDiagram.png',
//   name: 'Nichole Momoh',
//   about: 'i am nichole',
// );

// var solomon = Member(
//   image: 'images/img1.jpg',
//   name: 'Solomon Momoh',
//   about: 'i am solomon',
// );
