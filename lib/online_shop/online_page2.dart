import 'package:flutter/material.dart';
import 'package:flutter_application_1/online_shop/drawerpage.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.lock)
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 15,
              right: 135,
            ),
            child: Text(
              "The most popular \n clothes today ",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: GridView.count(crossAxisCount: 2, children: [
              _listItem(
                  images:
                      'https://phlearn.com/wp-content/uploads/2016/06/add-patterns-to-clothing-after-1200px.jpg',
                  title: 'One Piece ',
                  sub_title: "\$8"),
              _listItem(
                images:
                    'https://phlearn.com/wp-content/uploads/2016/09/complementary-colors-after-1200px.jpg?fit=1200%2C800&quality=99&strip=all',
                title: 'White t-shirt',
                sub_title: '\$10',
              ),
              _listItem(
                images:
                    'https://cdn.colorexpertsbd.com/wp-content/uploads/2017/07/originall.jpg',
                title: 'White Shirt',
                sub_title: '\$5',
              ),
              _listItem(
                images:
                    'https://www.pinkvilla.com/imageresize/khloe_claps_troll.jpg?width=752&format=webp&t=pvorg',
                title: 'One Piece',
                sub_title: "\$9",
              ),
              _listItem(
                  images:
                      "https://png.pngtree.com/png-vector/20210403/ourmid/pngtree-womens-dress-suit-png-image_3194169.jpg",
                  title: 'Black suit',
                  sub_title: "\$12"),
              _listItem(
                images:
                    "https://www.bwillcreative.com/wp-content/uploads/2022/04/how-to-change-clothing-color-in-photoshop-45.jpg",
                title: "Red shirt",
                sub_title: "\$15",
              ),
              _listItem(
                images:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4RkNyL-OPgAhT5ERi2luO2LHGp7B8P7PmbQ&usqp=CAU",
                title: "Black suit",
                sub_title: "\$20",
              ),
              _listItem(
                images:
                    'https://i.pinimg.com/736x/7c/b8/8b/7cb88b498b969bcfc680b35277bb0de4.jpg',
                title: 'suit',
                sub_title: '\$25',
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _listItem({
    String? images,
    String? title,
    String? sub_title,
  }) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      elevation: 15,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(images!),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Text(title!),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(sub_title!)
              ],
            )
          ],
        ),
      ),
    );
  }
}
