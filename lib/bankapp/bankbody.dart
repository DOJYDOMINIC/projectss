import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BankBody(),
  ));
}

class BankBody extends StatefulWidget {
  @override
  State<BankBody> createState() => _BankBodyState();
}

class _BankBodyState extends State<BankBody> {
  List listile = [
    "My Account",
    "Load eSawa",
    "Payment",
    "Fund Transfer",
    "Sheduled Pyment",
    "Scan to Pay"
  ];
  List iconsbank = [
    "https://cdn1.iconfinder.com/data/icons/digital-marketing-red/64/DISTRIBUTION_NETWORK-connector-mobile_phone-communications-share-512.png",
    "https://freefilehippo.com/wp-content/uploads/2020/02/eScan-Anti-Virus.png",
    "https://cdn4.iconfinder.com/data/icons/cyber-security-network-protection-5/512/Mobile_security-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/SMARTPHONE-transfer-data-arrows-internet-512.png",
    "https://cdn4.iconfinder.com/data/icons/data-transfer-red/64/QUEUE-duration-file_storage-transfer-time-512.png",
    "https://cdn3.iconfinder.com/data/icons/protection-and-security-red/64/QR_CODE-qr_code-electronics_-scan-digital-512.png"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          ),
      itemBuilder: (BuildContext context, int index) {
        return
        Scaffold(
          body: Card(
            child: Container(
              width: 100,
              height: 100,
              child: Column(
                children: [
                  Image(
                    height: 50,
                      width: 50,
                      image:NetworkImage(iconsbank[index])),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(listile[index],style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        );
      },itemCount: 6,
    );
  }
}
