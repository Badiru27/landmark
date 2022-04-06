import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// class ConfirmationPage extends StatelessWidget {
//   const ConfirmationPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     int price = 2000;

//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
//             ),
//           )
//         ],
//       ),
//     );

//     // Scaffold(
//     //   body: Center(
//     //     child: Padding(
//     //       padding: const EdgeInsets.all(20.0),
//     //       child: Column(mainAxisSize: MainAxisSize.min, children: [
//     //         const Text(
//     //           'Booking Confirmation',
//     //           style: TextStyle(fontSize: 23),
//     //         ),
//     //         const SizedBox(
//     //           height: 10,
//     //         ),
//     //         const Text(
//     //           'Hello Boluji, your payment was successful and has been received by Landmark Leisure Beach.',
//     //           textAlign: TextAlign.center,
//     //         ),
//     //         const SizedBox(
//     //           height: 20,
//     //         ),
//     //         Text('${NumberFormat.currency(symbol: 'NGN').format(price)} ',
//     //             style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
//     //         const SizedBox(
//     //           height: 10,
//     //         ),
//     //         Image.asset(
//     //           'asset/images/qr_code.png',
//     //           scale: 10,
//     //         ),
//     //         Text(
//     //           'BOOKING DETAILS',
//     //           style: TextStyle(fontSize: 16),
//     //         ),
//     //         const SizedBox(
//     //           height: 10,
//     //         ),
//     //         Padding(
//     //           padding: const EdgeInsets.only(left: 50, right: 50),
//     //           child: Column(
//     //             children: [
//     //               _textWithDetails(
//     //                 name: 'Booking Reference',
//     //                 details: 'M350F99R'
//     //               ),
//     //             ],
//     //           ),
//     //         )
//     //       ]),
//     //     ),
//     //   ),
//     // );
//   }

//   Widget _textWithDetails({required String name, required String details}) {
//     return Row(
//       children: [
//         Text(name),
//         const Spacer(),
//         Text(details),
//       ],
//     );
//   }
// }

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int price = 2000;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 400,
                  //color: Colors.black,
                ),
                SizedBox
                (
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _containerShadow(
                          up: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Sucessful!',
                                style: TextStyle(
                                    color: Colors.blueAccent, fontSize: 16),
                              ),
                              SizedBox(height: 10),
                              Text('Transfer successful')
                            ],
                          )),
                      _containerShadow(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _textWithDetails(
                                name: 'Recepient', details: 'Daniel Amu'),
                            const SizedBox(height: 10),
                            _textWithDetails(
                                name: 'Amount',
                                details: NumberFormat.currency(symbol: 'NGN')
                                    .format(price)),
                            const SizedBox(height: 10),
                            _textWithDetails(
                                name: 'Transaction Id', details: '3QRB7JCWZ9'),
                          ],
                        ),
                      )),
                              
                    ],
                  ),
                ),
                      Positioned(
                        top: 3,
                        child: ClipOval(
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.blueAccent,
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                        ))
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Text(
                'Hello Boluji, your payment was successful and has been received by Landmark Leisure Beach.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent),
                child: const Center(
                    child: Text(
                  'Close',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _containerShadow({bool up = true, required Widget child}) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: up
              ? const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              //  offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(child: child),
      ),
    );
  }

  Widget _textWithDetails({required String name, required String details}) {
    return Row(
      children: [
        Text(name),
        const Spacer(),
        Text(details, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
