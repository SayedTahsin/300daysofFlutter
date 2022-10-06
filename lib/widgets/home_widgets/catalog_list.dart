import 'package:flutter/material.dart';
import 'package:fullter_tutorial/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';
import '../theme.dart';
import '../../pages/home_page.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell( //! MaterialPageRoute 
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: catalog,
              ),
            ),
          ),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);

  Widget build(BuildContext context) {
    return VxBox(
        //!velocity_x content
        child: Row(
      //!items will show row wise
      children: [
        Hero( //* animation on image
          tag: Key(catalog.id.toString()),
          child: CalatogImage(
            //! for showing image , called constructor
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //! x axis , content will show from 0
          mainAxisAlignment: MainAxisAlignment
              .center, //! y axis ,content will show in middle form up and down
          children: [
            catalog.name.text.lg
                .color(context.accentColor)
                .bold
                .make(), //!extracting name and desc and
            catalog.desc.text
                .textStyle(context.captionStyle)
                .make(), //! modiying with velocity_x content
            30.heightBox, //! like boxSize , leaving space of 30 before buttonbar
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.make(),
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
                )
              ],
            ).pOnly(right: 30), //! buttonbar padding only on right
          ],
        ))
      ],
    )).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}
