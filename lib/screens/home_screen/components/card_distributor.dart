import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class CardDistributor extends StatefulWidget {
  const CardDistributor({
    Key? key,
    this.agency,
  }) : super(key: key);

  final Agency? agency;

  @override
  State<CardDistributor> createState() => _CardDistributorState();
}

class _CardDistributorState extends State<CardDistributor> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        //onHorizontalDragStart: (details) => _check = !_check,
        onTap: () {
          setState(() {
            _check = !_check;
          });
        },
        child: Container(
          width: 145,
          height: 210,
          decoration: BoxDecoration(
              color: _check ? kPrimaryColor : kSecondaryColor,
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 21),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.agency!.urlAvatar!),
                  radius: 41,
                ),
                const SizedBox(height: 10),
                Text(
                  widget.agency!.nameAgency!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: _check ? kSecondaryColor : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
