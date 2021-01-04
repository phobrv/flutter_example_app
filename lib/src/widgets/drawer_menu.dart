import 'package:flutter/material.dart';
import 'package:firstApp/src/theme/theme.dart';
import 'package:firstApp/src/routes/routes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DrawerMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    return Drawer(
      child: Container(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                width: double.infinity,
                height: 150,
                child: CircleAvatar(
                  backgroundColor: appTheme.currentTheme.accentColor,
                  child: Text(
                    'FH',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
            Expanded(child: ListChoices()),
            ListTile(
              leading: Icon(
                Icons.lightbulb_outline,
                color: appTheme.currentTheme.accentColor,
              ),
              title: Text('Dark Mode'),
              trailing: Switch.adaptive(
                value: appTheme.darkTheme,
                activeColor: appTheme.currentTheme.accentColor,
                onChanged: (value) {
                  appTheme.darkTheme = value;
                },
              ),
            ),
            SafeArea(
              bottom: true,
              top: false,
              right: false,
              left: false,
              child: ListTile(
                leading: Icon(
                  Icons.add_to_home_screen,
                  color: appTheme.currentTheme.accentColor,
                ),
                title: Text('Custom Theme'),
                trailing: Switch.adaptive(
                  value: appTheme.customTheme,
                  activeColor: appTheme.currentTheme.accentColor,
                  onChanged: (value) {
                    appTheme.customTheme = value;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ListChoices extends StatelessWidget {
  const ListChoices({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context).currentTheme;

    return ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, i) => Divider(
          color: appTheme.primaryColorLight,
        ),
        itemBuilder: (context, i) => ListTile(
          leading: FaIcon(
            pageRoutes[i].icon,
            color: appTheme.accentColor,
          ),
          title: Text(pageRoutes[i].title),
          trailing: Icon(
            Icons.chevron_right,
            color: appTheme.accentColor,
          ),
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>pageRoutes[i].page));
          },
        ),
        itemCount: pageRoutes.length);

  }
}