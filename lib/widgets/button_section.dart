import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColum(color, Icons.call, 'CALL', context),
        _buildButtonColum(color, Icons.near_me, 'ROUTE', context),
        _buildButtonColum(color, Icons.share, 'SHARE', context),
      ],
    );
  }
  // todo: implementar regrasar un bottom que haga un snackbar

  Column _buildButtonColum(
      Color color, IconData icon, String label, BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Botón $label presionado '),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(icon),
          iconSize: 30,
          color: color,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        ),
      ],
    );
  }
}
