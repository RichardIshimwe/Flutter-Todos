import 'package:flutter/material.dart';
import 'package:flutter_todos/app/app.dart';
import 'package:flutter_todos/home/classes/language.dart';

class TodosOverviewTranslationButton extends StatelessWidget {
  const TodosOverviewTranslationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Language>(
      underline: const SizedBox(),
      icon: const Icon(
        Icons.language,
        color: Colors.white,
      ),
      onChanged: (Language? language) async {
        if (language != null) {
          // Locale _locale = await setLocale(language.languageCode);
          AppView.setLocale(context, Locale(language.languageCode, ''));
          print("Language: ${language?.name}");
          print("Language code: ${language!.languageCode}");
        }
      },
      items: Language.languageList()
          .map<DropdownMenuItem<Language>>(
            (e) => DropdownMenuItem<Language>(
              value: e,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    e.flag,
                    style: const TextStyle(fontSize: 30),
                  ),
                  Text(e.name)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
