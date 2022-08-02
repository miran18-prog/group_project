import 'package:flutter/material.dart';

class CreateProfile extends StatelessWidget {
  CreateProfile({Key? key}) : super(key: key);
  var city = [
    'Erbil',
    'Sulaimany',
    'Duhok',
    'Kerkuk',
  ];

  var jobCategory = [
    'Flutter Developer',
    'Front End Developer',
    'Back End Developer',
    'Full Stack Developer',
  ];

  String employee = "Employee";
  String unEmployee = "UnEmployee";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Create Profile",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Color.fromARGB(255, 205, 205, 205),
                        hintText: "Enter your name"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Color.fromARGB(255, 205, 205, 205),
                        hintText: "Enter phone number"),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "City",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 300,
                  child: DropdownButton(
                    value: city[0],
                    items: city.map((String city) {
                      return DropdownMenuItem(
                        value: city,
                        child: Text(city),
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Job Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 300,
                  child: DropdownButton(
                    value: jobCategory[0],
                    items: jobCategory.map((String job) {
                      return DropdownMenuItem(
                        value: job,
                        child: Text(job),
                      );
                    }).toList(),
                    onChanged: (String? v) {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ListTile(
                  leading: Radio(
                      value: employee,
                      groupValue: "Employee",
                      onChanged: (radio1) {}),
                  title: const Text("Employee"),
                ),
                ListTile(
                  leading: Radio(
                      value: employee,
                      groupValue: "UnEmployee",
                      onChanged: (radio1) {}),
                  title: const Text("UnEmployee"),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                width: 175,
                child: ElevatedButton(
                  child: Text(
                    "Create Profile",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
