import 'package:flutter/material.dart';
import 'package:flutter_theming/app_theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key?  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text("Settings Page",style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),),
    ),
    body: ListView.builder(
      itemCount: AppTheme.values.length,
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        final itemAppTheme = AppTheme.values[index];
        return Card(
          color: appThemeData[itemAppTheme]!.primaryColor,
          child: ListTile(
              title: Text(
                itemAppTheme.toString(),
                style: appThemeData[itemAppTheme]!.textTheme.bodyText1,
              ),
              onTap: () {
                // for saving current theme-data at restart app , must using local storage .
                selectedTheme.value = appThemeData[itemAppTheme]!;
              }),
        );
      },
    ),
  );

  }
}
