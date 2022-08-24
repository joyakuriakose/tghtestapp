import 'package:flutter/material.dart';

class LanguageButtons extends StatefulWidget {
  @override
  _LanguageButtonsState createState() => _LanguageButtonsState();
}

class _LanguageButtonsState extends State<LanguageButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 45),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(180, 50),
                primary: Colors.grey[900],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                bottomsheet(context);
                // Navigator.push(
                //   context, MaterialPageRoute(builder: (context) => Languages()),
                // );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/german-flag-picture-id835757276?b=1&k=20&m=835757276&s=170667a&w=0&h=rru4PNY0e3TmmqjvghezZA3W_Yfezfzv90V2en1RHsg='),
                    radius: 15,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Germany',
                    style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ],
              )),
        ),
        SizedBox(width: 15),
        Icon(
          Icons.compare_arrows_sharp,
          color: Colors.white,
          size: 20,
        ),
        SizedBox(width: 15),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(180, 50),
              primary: Colors.grey[900],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () {
              // Navigator.push(
              //   context, MaterialPageRoute(builder: (context) => Languages()),
              // );
            },
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/photos/canada-symbol-on-a-flagpole-picture-id184399449?b=1&k=20&m=184399449&s=170667a&w=0&h=XoVWIYhBcqCol0rbMgP4-YPoTykXnyk_FrEpX8HewCg='),
                  radius: 15,
                ),
                SizedBox(width: 10),
                Text(
                  'Canada',
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ],
            )),
      ],
    );
  }
}

Future bottomsheet(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(20),
      // ),
      context: context,
      builder: (ctx) {

        final List<String> cnames = [
          'germany',
          'canada',
          'australia',
          'India','germany',
          'canada',
          'australia',
          'India'
        ];
        final List<String> imageUrls = [
          'https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
          'https://images.unsplash.com/photo-1456518563096-0ff5ee08204e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
          'https://images.unsplash.com/photo-1541781286675-7b70223358d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2066&q=80',
          'https://images.unsplash.com/photo-1602276506996-8de11c09e837?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
          'https://images.unsplash.com/photo-1564507592333-c60657eea523?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
          'https://images.unsplash.com/photo-1456518563096-0ff5ee08204e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
          'https://images.unsplash.com/photo-1541781286675-7b70223358d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2066&q=80',
          'https://images.unsplash.com/photo-1602276506996-8de11c09e837?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
        ];
        return Container(
            height: MediaQuery.of(context).size.height * 0.75,
          decoration: BoxDecoration(color: Colors.black),

          child: ListView.custom(
            childrenDelegate: SliverChildBuilderDelegate(
              (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                  child: Card(
                    color: Colors.grey[900],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    elevation: 5,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          imageUrls[index],
                        ),
                        radius: 20,
                      ),
                      title: Text(
                        cnames[index],
                        style: const TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      });
}
