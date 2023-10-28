import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class taskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.3,
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              // An action can be bigger than the others.
              flex: 2,
              onPressed: (context) {},
              borderRadius: BorderRadius.circular(10),
              backgroundColor: Color(0xFFEC4B4B),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Container(
          height: 150,
          width: 400,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 6,
                decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "play football ",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Text(
                    "Go to play football with friends ",
                    style: theme.textTheme.bodySmall,
                  ),
                  Row(
                    children: [
                      Icon(Icons.alarm, size: 18),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "10:40 pm ",
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  )
                ],
              ),
              Container(
                width: 69,
                height: 44,
                decoration: BoxDecoration(
                    color: theme.primaryColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Image.asset("assets/images/Icon  awesome-check.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
