import 'package:flutter/material.dart';

class contactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
        child: Column(
          children: [
            Container(
              child: Text(
                "CONTACT FORM",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            contactForm(),
          ],
        ),
      ),
    );
  }
}

class contactForm extends StatefulWidget {

  @override
  _contactFormState createState() => _contactFormState();
}

class _contactFormState extends State<contactForm> {

  final  _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          formField("Enter your name"),
          formField("Enter your email address"),
          formField("Enter your question/feedback"),
          Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.fromLTRB(250, 60, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Submitting form!')));
                }
              },
              child: Text(
                  'Submit',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class formField extends StatelessWidget {

  final String sentence;
  formField(this.sentence);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
      width: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "$sentence",
          ),
          style: TextStyle(
            fontSize: 17,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ),
    );
  }
}
