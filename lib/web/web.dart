import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const List<String> Products = <String>['Products', 'Product1', 'Product2'];
const List<String> resourse = <String>['Resources', 'Resources1', 'Resources2'];
const List<String> help = <String>['Help', 'Help1', 'Help2'];

class Webpage extends StatefulWidget {
  const Webpage({super.key});

  @override
  State<Webpage> createState() => _WebpageState();
}

class _WebpageState extends State<Webpage> {
  @override
  Widget build(BuildContext context) {
    String ProductsValue = Products.first;
    String ResourseValue = resourse.first;
    String HelpValue = help.first;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Center(
              child: Text(
                'Storekit',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: DropdownButton<String>(
                value: ProductsValue,
                underline: Container(
                  height: 2,
                  color: Colors.transparent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    ProductsValue = value!;
                  });
                },
                items: Products.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: DropdownButton<String>(
                value: ResourseValue,
                underline: Container(
                  height: 2,
                  color: Colors.transparent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    ResourseValue = value!;
                  });
                },
                items: resourse.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: DropdownButton<String>(
                value: HelpValue,
                underline: Container(
                  height: 2,
                  color: Colors.transparent,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    HelpValue = value!;
                  });
                },
                items: help.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Talk to an expert?',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.black,
                  elevation: 0,
                  side: const BorderSide(width: 1.0, color: Colors.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Log In',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  side: const BorderSide(width: 1.0, color: Colors.grey)),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 700,
                child: Image.asset(
                  'asset/images/asetimage.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: double.infinity,
                height: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: double.infinity,
                      width: 250,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 20),
                            child: Text('DAISY | GREEN'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                                '"What A Game-Changer Guests Are Having An Amazing Experience And it ected in Our Revenue"'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://content.api.news/v3/images/bin/38f5d08d5267e589a29aea06eb412137')),
                            title: Text('Prue Freeman'),
                            subtitle: Text('founder'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 250,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 20),
                            child: Text('ballie ballarson'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                                'Storekit Is The Perfect Tool For Managing Operations, Especially During A Staff Shortage. We ve Seen A Huge Increase In Upselling, With No Extra Staff!'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media.gettyimages.com/id/78951681/photo/sport-football-circa-1980s-london-england-george-armstrong-arsenal-reserve-team-manager.jpg?s=612x612&w=gi&k=20&c=v_-brzgQ4bRsxXh0cfm1ZaKcij-e5_yIQsaOkA09SjA='),
                            ),
                            title: Text('George Armstrong'),
                            subtitle: Text('Managing director'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 250,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 20),
                            child: Text('PIZZA pilgrims'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                                'We Tried And Tested A Lot Of Other Solutions, But Storekit WasBy Far The Best Fit For Our Business Needs, It is So Simple!"'),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://media.licdn.com/dms/image/C5603AQEqrLkk1logGg/profile-displayphoto-shrink_800_800/0/1517622477859?e=2147483647&v=beta&t=jkp9ujiG3grn1NJs90nRFVX6yRMGup5l2eRfaU2ZSEk'),
                            ),
                            title: Text('Thome Elliot'),
                            subtitle: Text('Co-founder'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_outlined),
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_outlined)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  // color: Colors.purpleAccent,
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('FOR BUSINESSES OF ALL SIZES'),
                              Text(
                                'ORDERING \nAND PAYMENT \nMADE EASY',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                  'Give your guests the ulyimate flexibility and keep them \ncoming back for more using storekits intuitive order and \npay experiance'),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                    'Order & pay\nPay-at-table\nDelivary & pickup'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 87,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('SIGN UP'),
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'BOOK A DEMO',
                                          style: TextStyle(color: Colors.black),
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        width: 500,
                        height: double.infinity,
                        // color: Colors.pink,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: SizedBox(
                            child: Image.asset('asset/images/assetphone.jpg')),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  // color: Colors.purpleAccent,
                  child: Row(
                    children: [
                      SizedBox(
                          child: Image.asset('asset/images/ASSETPHONE2.jpg')),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('FOR AMBITIOUS OPERATORS'),
                              Text(
                                'SCALE \nOPERATIONS \n& SIMPLIFY \nSERVICE',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                  'Bloster your brand and build your business with\nstorekit intuitive technology.increase revenue and\ndrive growth by connecting with customers on your\nterms'),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: SizedBox(
                                  height: 40,
                                  width: 120,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('BOOK DEMO'),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 225, 190, 179),
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Text(
                      'Get the recipe for growth',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
                    ),
                    Text(
                        'our venue parteners see upto 30% increase on avarage spend immediatly after going live with storekit ,We will'),
                    Text(
                        'help you encoourage directly with cutomers to keep them coming back for more.'),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Text(
                              '3x',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 100, right: 200),
                            child: Text(
                              '+400%',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w800),
                            ),
                          ),
                          Text(
                            '#1',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                              'Increase in direct onine and in\n               venue revenue'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text('Tips to keep your team motivated'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text(
                              'UK market leader in mobile\n               ordering'),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
