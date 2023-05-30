import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        children: [
          Positioned(
            bottom: screenHeight * .25,
            right: screenWidth * .2,
            child: _presentationCard(context)
          )
        ]
      ),
    );
  }

  Widget _presentationCard(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    BoxConstraints iconButtomConstrains = const BoxConstraints(
      minHeight: 48,
      minWidth: 48 
    ); 
    // double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      padding: const EdgeInsets.all(16),
      width: screenWidth * .25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Adonis Almonte", style: Theme.of(context).textTheme.displaySmall),
          Text("Full Stack Developer and beyond", style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: IconButton(
                    onPressed: (){
                      js.context.callMethod('open', ["https://www.linkedin.com/in/dev-adonis-almonte/"]);
                    }, 
                    constraints: iconButtomConstrains,
                    color: Theme.of(context).colorScheme.onPrimary,
                    icon: const Icon(FontAwesomeIcons.linkedin)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: IconButton(
                    onPressed: (){
                      js.context.callMethod('open', ["https://github.com/dev-aalmonte"]);
                    },
                    constraints: iconButtomConstrains,
                    color: Theme.of(context).colorScheme.onPrimary,
                    icon: const Icon(FontAwesomeIcons.github)
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: IconButton(
                    onPressed: (){
                      js.context.callMethod('open', ["assets/files/(JUNE 2023) Adonis Almonte - Resume.pdf"]);
                    }, 
                    constraints: iconButtomConstrains,
                    color: Theme.of(context).colorScheme.onPrimary, 
                    icon: const Icon(Icons.file_copy)
                  ),
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}