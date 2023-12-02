class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;
  final String imageUrl;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.imageUrl,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Crash Course on Python',
    imageUrl:
        'https://s3.amazonaws.com/coursera_assets/meta_images/generated/CERTIFICATE_LANDING_PAGE/CERTIFICATE_LANDING_PAGE~X43PFHMTRGLQ/CERTIFICATE_LANDING_PAGE~X43PFHMTRGLQ.jpeg',
    organization: 'Coursera',
    date: 'June 2022',
    skills: "Python Programming, Basic Python Data Structures, Object-Oriented Programming (OOP)",
    credential: 'https://www.coursera.org/account/accomplishments/certificate/X43PFHMTRGLQ',
  ),
  CertificateModel(
      name: "Data Science and Machine Learning Basic to Advanced",
      organization: "Udemy",
      date: "Oct 2023",
      skills:
          "Python Numpy, Pandas, Matplotlib, Scikit Learn, Data Visiualization and Preparation, ML",
      imageUrl:
          "https://udemy-certificate.s3.amazonaws.com/image/UC-91728505-595c-4dc7-836e-83b2d8ee298d.jpg?v=1697382285000",
      credential: "https://www.udemy.com/certificate/UC-91728505-595c-4dc7-836e-83b2d8ee298d/"),
  CertificateModel(
      name: "Complete Pandas for Absolute Beginners 2023",
      organization: "Udemy",
      date: "Nov 2023",
      skills: "Pandas",
      imageUrl:
          "https://udemy-certificate.s3.amazonaws.com/image/UC-0cfc2114-4c6f-43bd-a855-7b40902263ed.jpg?v=1701325985000",
      credential: "https://www.udemy.com/certificate/UC-0cfc2114-4c6f-43bd-a855-7b40902263ed/"),
];
