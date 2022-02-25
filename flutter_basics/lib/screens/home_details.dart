import 'package:flutter/material.dart';
import 'package:flutter_basics/models/catalog.dart';
import 'package:flutter_basics/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.extraBlack.make(),
            AddtoCart(catalog: catalog).wh(110, 30)
          ],
        ).pOnly(right: 8).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
                    height: 30,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text.xl.make(),
                          10.heightBox,
                          "The iPhone 12 features a 6.1-inch (15 cm) display[30] with Super Retina XDR OLED technology at a resolution of 2532×1170 pixels and a pixel density of about 460 ppi.The iPhone 12 Mini features a 5.4-inch (14 cm) display."
                              .text
                              .make()
                              .p16()
                        ],
                      ).py64(),
                    )))
          ],
        ).p32(),
      ),
    );
  }
}
