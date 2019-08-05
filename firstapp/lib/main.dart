import 'package:flutter_web/material.dart';
import 'package:firstapp/utils/responsive_layout.dart';
import 'package:firstapp/widgets/button_row.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkStation(),
    ),
  );
}

class WorkStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "CodingWithKishorPaul",
          style:
              TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.w800),
        ),
        leading: Image.asset("icon/nav-icon.png"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ResponsiveLayout(
        largeChild: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: SizedBox(
                  height: 50.0,
                  child: ButtonRow(),
                ),
              ),
            ),
            Body(),
          ],
        ),
        smallChild: SmallBody(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Image.asset(
            "background-image.jpg",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 60.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Created by KishorPaul",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600, fontSize: 16.0, fontFamily: "Open Sans"),
              ),
              const SizedBox(height: 20.0),
              Text(
                "The Tech Bench",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600, fontSize: 50.0, fontFamily: 'Merriweather'),
              ),
              const SizedBox(height: 14.0),
              Text(
                "Welcome to my website, here we bring the levarage together.",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400, fontSize: 24.0, fontFamily: "Open Sans"),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20.0),
              FlatButton(
                onPressed: () {},
                color: Color(0xFFCFE8E4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Read More", style: TextStyle(fontFamily: "Open Sans")),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 50.0),
      ],
    );
  }
}

class SmallBody extends StatelessWidget {
  const SmallBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: constraints.copyWith(
              minHeight: constraints.maxHeight,
              maxHeight: double.infinity,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      "background-image.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 60.0),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 40.0),
                          Text(
                            "Created by Kishorpaul",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                fontFamily: "Open Sans"),
                          ),
                          Text(
                            "My Tech Bench",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 35.0,
                                fontFamily: 'Merriweather'),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            "Welcome to my website, here you can learn about hybrid apps developnment. Here you can alos learn how to make flutter web applications.",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0,
                                fontFamily: "Open Sans"),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 20.0),
                          FlatButton(
                            onPressed: () {},
                            color: Color(0xFFCFE8E4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Read More", style: TextStyle(fontFamily: "Open Sans")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        color: Color(0XFFFBEFD9),
                        padding: EdgeInsets.all(12.0),
                        child: ButtonRow(
                          size: MainAxisSize.max,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}