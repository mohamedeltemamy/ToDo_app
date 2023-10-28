import 'package:flutter/material.dart';
import 'package:todo_app/pages/customText/custom_text.dart';

class bottomSheetView extends StatelessWidget {
  bottomSheetView({super.key});

  var formKey = GlobalKey<FormState>();
  TextEditingController titleControler = TextEditingController();
  TextEditingController descriptoinControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add New task",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                color: Colors.black,
              ),
            ),
            CustomText(
                title: "Enter your title ",
                controller: titleControler,
                validator: (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return ("you must enter your task ");
                  } else if (value.length < 10) {
                    return ("you must enter al least 10 charchters ");
                  } else {
                    return null;
                  }
                }),
            CustomText(
                title: "Enter your Description ",
                controller: descriptoinControler,
                maxLines: 2,
                validator: (String? value) {
                  if (value == null || value.trim().isEmpty) {
                    return ("you must enter your Description ");
                  } else if (value.length < 10) {
                    return ("you must enter al least 10 charchters ");
                  } else {
                    return null;
                  }
                }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Add New task",
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.black),
                ),
                GestureDetector(
                  onTap: () {
                    calenderDate(context);
                  },
                  child: Text(
                    "7 oct 2023",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.primaryColor),
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print(titleControler.text);
                  }
                },
                child: Text(
                  "Add Task",
                  style:
                      theme.textTheme.bodyLarge!.copyWith(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void calenderDate(BuildContext context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 365)));
  }
}
