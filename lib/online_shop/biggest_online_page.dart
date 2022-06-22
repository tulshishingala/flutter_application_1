import 'package:flutter/material.dart';
import 'package:flutter_application_1/online_shop/online_page2.dart';

class BiggestPage extends StatefulWidget {
  const BiggestPage({Key? key}) : super(key: key);

  @override
  State<BiggestPage> createState() => _BiggestPageState();
}

class _BiggestPageState extends State<BiggestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60, right: 160, left: 10),
            child: Text('Better Buys', style: TextStyle(fontSize: 30)),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://us.123rf.com/450wm/mikedesign/mikedesign1911/mikedesign191100094/134005513-black-friday-sale-concept-for-shop-shopping-woman-in-sunglasses-holding-red-bag-isolated-on-dark-bac.jpg?ver=6'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Biggest online store ',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 10,),
                
                Text(
                  "Get 20% discount\nfor new arrivals",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        const  SizedBox(height: 20,),
          const Text(
            '...',
            style: TextStyle(fontSize: 50),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewPage()),
                  );
                });
              },
              child: const Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}
