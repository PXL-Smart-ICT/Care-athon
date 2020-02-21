import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: RegisterForm(),
        ),
      ),
    );
  }
}
class RegisterForm extends StatefulWidget {
  const RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _RightLeg = false;
  bool _LeftLeg = false;
  bool _LeftArm = false;
  bool _RightArm = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Naam',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Naam is required';
              }
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Classificatie',
            ),
            validator: (String value) {
              if (value.trim().isEmpty) {
                return 'Full name is required';
              }
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: _LeftArm,
                          onChanged: _setLeftArm,
                        ),
                        GestureDetector(
                          onTap: () => _setLeftArm(!_LeftArm),
                          child: const Text(
                            'Leftarm  ',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: _RightArm,
                          onChanged: _setRightArm,
                        ),
                        GestureDetector(
                          onTap: () => _setRightArm(!_RightArm),
                          child: const Text(
                            'Rightarm',
                          ),
                        ),
                      ],
                    ),
                    Row(

                      children: <Widget>[
                        Checkbox(
                          value: _LeftLeg,
                          onChanged: _setLeftLeg,
                        ),
                        GestureDetector(
                          onTap: () => _setLeftLeg(!_LeftLeg),
                          child: const Text(
                            'Leftleg  ',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: _RightLeg,
                          onChanged: _setRightLeg,
                        ),
                        GestureDetector(
                          onTap: () => _setRightLeg(!_RightLeg),
                          child: const Text(
                            'Rightleg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                PersonPicture(),

              ],
            ),
          ),
          Row(
            children: <Widget>[
              const Spacer(),
              OutlineButton(
                highlightedBorderColor: Colors.black,
                onPressed: true ? _submit : null,
                child: const Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget PersonPicture() {
    if(_RightLeg && _LeftLeg && _LeftArm && _RightArm){
      return Image.asset('assets/blue_man_red_body.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_RightLeg && _LeftLeg){
      return Image.asset('assets/blue_man_red_legs.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_RightLeg && _RightArm){
      return Image.asset('assets/blue_man_red_right_arm_right_leg.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_RightLeg && _LeftArm){
      return Image.asset('assets/blue_man_red_left_arm_right_leg.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_LeftLeg && _RightArm){
      return Image.asset('assets/blue_man_red_right_arm_left_leg.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_LeftLeg && _LeftArm){
      return Image.asset('assets/blue_man_red_left_arm_left_leg.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_RightLeg){
      return Image.asset('assets/blue_man_red_right_leg.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_LeftLeg){
      return Image.asset('assets/blue_man_red_left_leg.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_RightArm && _LeftArm){
      return Image.asset('assets/blue_man_red_arms.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_RightArm){
      return Image.asset('assets/blue_man_red_right_arm.png', height: 300, fit: BoxFit.fitWidth,);
    }else if (_LeftArm){
      return Image.asset('assets/blue_man_red_left_arm.png', height: 300, fit: BoxFit.fitWidth,);
    }else{
      return Image.asset('assets/blue_man.png', height: 300, fit: BoxFit.fitWidth,);
    }
  }


  void _submit() {
    _formKey.currentState.validate();
    print('Form submitted');
  }

  void _setLeftLeg(bool newValue) {
    setState(() {
      _LeftLeg = newValue;
    });
  }
  void _setRightLeg(bool newValue) {
    setState(() {
      _RightLeg = newValue;
    });
  }
  void _setLeftArm(bool newValue) {
    setState(() {
      _LeftArm = newValue;
    });
  }
  void _setRightArm(bool newValue) {
    setState(() {
      _RightArm = newValue;
    });
  }
}
