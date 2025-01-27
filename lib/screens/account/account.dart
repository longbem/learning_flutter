import 'package:demo/screens/account/item_account.dart';
import 'package:demo/screens/setting/setting.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'Kho Nhập';
    String phone = '0971000997';
    String typeAccount = 'Nhà cung cấp';

    void onSettings() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SettingsScreen();
      }));
      // Navigator.pushNamed(context, '/settings');
    }

    onAccount() {}

    onLogout() {}

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '$phone',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Text(
              '$typeAccount',
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        elevation: 4.0, // This sets the shadow at the bottom of the AppBar
        shadowColor:
            Colors.black, // You can customize the shadow color if needed
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ItemAccount(
                  icon: Icons.blinds_closed_outlined,
                  label: 'Đơn hàng đã duyệt',
                  onPressed: () {}),
              ItemAccount(
                  icon: Icons.account_circle_outlined,
                  label: 'Tài khoản',
                  onPressed: onAccount),
              ItemAccount(
                  icon: Icons.settings,
                  label: 'Cài đặt',
                  onPressed: onSettings),
              ItemAccount(
                  icon: Icons.logout, label: 'Đăng xuất', onPressed: onLogout),
            ],
          ),
        ),
      ),
    );
  }
}
