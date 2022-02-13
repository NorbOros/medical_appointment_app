import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  final IconData _icon;
  final String _activity;
  final Color _color;

  const ActivityTile({Key? key, required IconData icon, required String activity, required Color color})
      : _icon = icon,
        _activity = activity,
        _color = color,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(color: _color, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              _icon,
              color: Colors.white,
            ),
            SizedBox(
              width: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2 - 130,
              child: Text(
                _activity,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
