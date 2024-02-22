import 'package:flutter/material.dart';

class CarbonAirtime extends StatelessWidget {
  const CarbonAirtime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(-18),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(229, 167, 167, 167)))),
            )),
        leading: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Buy Airtime ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(192, 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledBackgroundColor:
                              const Color.fromARGB(255, 165, 215, 255),
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 3, 34, 213)),
                      child: Text(
                        "Buy airtime",
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "buydata");
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(192, 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        disabledBackgroundColor:
                            const Color.fromARGB(255, 165, 215, 255),
                        foregroundColor: const Color.fromARGB(255, 3, 34, 213),
                        backgroundColor: Color.fromARGB(200, 220, 239, 255),
                      ),
                      child: Text(
                        "Buy data",
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Beneficiary phone number"),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                // height: 50,
                // width: 400,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      // alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey.shade200,
                      hintText: "Enter phone number",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 133, 133, 133),
                      ),
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Container(
                        height: 0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 148, 148, 148)),
                        child: Icon(
                          Icons.book_online_outlined,
                          color: const Color.fromARGB(255, 65, 65, 65),
                          size: 25,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 200,
                width: 400,
                child: Card(
                  elevation: 4,
                  surfaceTintColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 172, 202, 255)
                                  .withOpacity(0.5),
                          radius: 50,
                          child: const Icon(
                            Icons.credit_card,
                            color: Color.fromARGB(183, 0, 70, 156),
                            size: 80,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text("No recent payment",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 10),
                        Text("You have not made any payment recently ",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade800)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 200,
                width: 400,
                child: Card(
                  elevation: 4,
                  surfaceTintColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 172, 202, 255)
                                  .withOpacity(0.5),
                          radius: 50,
                          child: const Icon(
                            Icons.phone_android_sharp,
                            color: Color.fromARGB(183, 0, 70, 156),
                            size: 80,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text("No saved contact",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700)),
                        const SizedBox(height: 5),
                        Text(
                            "You currently have no saved contacts on your account.When you do, they will show up here. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade800)),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
              ),
              ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 3, 34, 213),
                      foregroundColor: Colors.white,
                      elevation: 5,
                      disabledBackgroundColor: Color.fromARGB(162, 3, 34, 213),
                      disabledForegroundColor: Colors.white,
                      fixedSize: Size(500, 50),
                      padding: const EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: Text("Proceed"))
            ],
          ),
        ),
      ),
    );
  }
}
