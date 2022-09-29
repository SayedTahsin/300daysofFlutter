import 'package:flutter/material.dart';
import 'package:fullter_tutorial/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.bold.red800.make(),
            ElevatedButton(
              //!evaluated button for buy,
              onPressed: () {},
              style: ButtonStyle(
                //! styilng the button
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "Add to cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              //! for animation
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.xl4
                      .color(MyTheme.darkBluishColor)
                      .bold
                      .make(), //!extracting name and desc and
                  catalog.desc.text
                      .textStyle(context.captionStyle)
                      .xl
                      .make(), //! modiying with velocity_x content
                  "That clay on aye ways could aught she albions but the. Friend nor had can waste long. Will a in."
                      .text
                      .textStyle(context.captionStyle)
                      .xl
                      .make().py16(), //! modiying with velocity_x content

                  30.heightBox,
                ]).py64(),
              ),
            ))
          ],
        ).p64(),
      ),
    );
  }
}
