import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:super_smash_fighters/presentation/core/colors.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters',
            style: TextStyle(color: Colors.black, fontSize: 27)),
        elevation: 1,
        centerTitle: true,
        leading: TextButton(
          child: Text('Close',
              style: TextStyle(color: Colors.black, fontSize: 14)),
          onPressed: () => AutoRouter.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Sort By',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(left: 12, top: 21),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 16),
                child: Column(children: [
                  ListTile(
                    title: Text('Ascending'),
                    trailing: Radio(
                      groupValue: 'Ascending',
                      value: 'Ascending',
                      onChanged: (value) {
                        print(value);
                      },
                      activeColor: kFiltersGreen,
                      overlayColor: MaterialStateProperty.all<Color>(
                          kFiltersGreen.withOpacity(0.2)),
                    ),
                  ),
                  ListTile(
                    title: Text('Descending'),
                    trailing: Radio(
                      groupValue: 'Ascending',
                      value: 'Descending',
                      onChanged: (value) {
                        print(value);
                      },
                      activeColor: kFiltersGreen,
                      overlayColor: MaterialStateProperty.all<Color>(
                          kFiltersGreen.withOpacity(0.2)),
                    ),
                  ),
                  ListTile(
                    title: Text('Rate'),
                    trailing: Radio(
                      groupValue: 'Ascending',
                      value: 'Rate',
                      onChanged: (value) {
                        print(value);
                      },
                      activeColor: kFiltersGreen,
                      overlayColor: MaterialStateProperty.all<Color>(
                          kFiltersGreen.withOpacity(0.2)),
                    ),
                  ),
                  ListTile(
                    title: Text('Descending'),
                    trailing: Radio(
                      groupValue: 'Ascending',
                      value: 'Downloads',
                      onChanged: (value) {
                        print(value);
                      },
                      activeColor: kFiltersGreen,
                      overlayColor: MaterialStateProperty.all<Color>(
                          kFiltersGreen.withOpacity(0.2)),
                    ),
                  ),
                ]),
              ),
              Divider(color: Color.fromRGBO(235, 234, 236, 1), thickness: 1),
              Container(
                child: Text(
                  'Price',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(left: 12, top: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
