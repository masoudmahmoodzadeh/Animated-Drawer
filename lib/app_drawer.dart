import 'package:flutter/material.dart';

import 'theme/app_colors.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle =
        const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1);
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                color: AppColors.primary,
                child: DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Masoud Mahmoodzadeh",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Android & Flutter Developer",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: Text("Profile", style: textStyle),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: Text("Messages", style: textStyle),
              ),
              ListTile(
                leading: const Icon(Icons.local_activity),
                title: Text("Activity", style: textStyle),
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: Text("List", style: textStyle),
              ),
              ListTile(
                leading: const Icon(Icons.report),
                title: Text("Reports", style: textStyle),
              ),
              ListTile(
                leading: const Icon(Icons.analytics_outlined),
                title: Text("Statistics", style: textStyle),
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: Text("Sign Out", style: textStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
