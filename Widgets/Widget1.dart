void main() => runApp(MaterialApp(
      home: LAB2(),
    ));

class LAb1 extends StatelessWidget {
  double _slidervalue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 106, 12, 200),
        ),
        body: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(100),
                color: Colors.black,
                child: Column(
                  children: [
                    Icon(
                      Icons.male,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(100),
                color: Colors.black,
                child: Column(
                  children: [
                    Icon(
                      Icons.female,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'FeMale',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),
            ]),
            Container(
              child: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text('176 cm'),
                  Slider(value: _slidervalue, onChanged: (newValue) {}),
                  Row(children: <Widget>[
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(100),
                        color: Colors.black,
                        child: Column(
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '60',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(100),
                      color: Colors.black,
                      child: Column(
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '23',style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            )
          ],
        ));
  }
}