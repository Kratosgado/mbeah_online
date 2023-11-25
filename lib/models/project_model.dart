class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Nasm Compiler for Linux',
    'This is a Vs Code Extension that automates the compilation and execution of assembly codes written in NASM. It is uploaded to MarketPlace with over 2k installs.',
    'images/coffee.png',
    'https://github.com/Kratosgado/nasm-compiler-linux',
  ),
  Project(
    'Flutter Demo Chat App',
    " The app is built using Flutter for the frontend and integrates with Firebase for backend services, including authentication, real-time database, and storage. ",
    'images/car.png',
    'https://github.com/Kratosgado/demo_chat_app',
  ),
    Project(
      'Bible Studies Wing',
      "This is a bible study app that allows users to create accounts, read bible verses, share bible verses, and connect with other users. It is built with Flutter for the frontend and integrates with Firebase for backend services, including authentication, real-time database, and storage.",
      'images/bslogo.jpg',
      'https://github.com/Kratosgado/bible_studies_wing'),
  Project(
      'Flutter Catalog',
      'Flutter Catalog is a my practice project that expolores flutters diverse packages, very handy catalog of beautifully designed widgets to help ease your Flutter journey. The app showcases all the available Flutter widgets including external packages',
      'images/alarm.jpg',
      'https://github.com/Kratosgado/flutter_catalog'),
  Project(
      'Instagram Clone',
      "This is a clone of the Instagram app, built with Typescript and React Navive. It is a fully functioning and feature-rich application that allows users to create their own accounts, share posts, and connect with other users.",
      'images/cui.png',
      'https://github.com/Kratosgado/typescript-instaClone'),
  Project(
      'AutoScroll Web Extension',
      'This is a web extension that automatically scrolls the page for you and capable of visiting subpages.',
      'images/player.png',
      'https://github.com/Kratosgado/autoscroll-chrome-extension'),
  Project(
      'VsCode Color Theme',
      "A color theme that combines Github dark default theme, Andromeda theme and vscode dark editor color scheme. It is a very beautiful theme that is easy on the eyes.",
      'images/recipe.png',
      'https://github.com/Kratosgado/kg-dark-theme'),
  Project(
      'Chat Backend App',
      "This is a backend app for a chat application built with NestJs, GraphQL, Prisma and PostgreSQL. It allows users create accounts, send messages and connect with other users.",
      'images/task.png',
      'https://github.com/Kratosgado/backend-chat-app'),

];
