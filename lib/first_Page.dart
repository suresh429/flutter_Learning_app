import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/second_page.dart';

class MyPage extends StatefulWidget {
  final String name,phone;
  MyPage(this.name, this.phone);

  @override
  _MyPageState createState() => _MyPageState(this.name, this.phone);
}

class _MyPageState extends State<MyPage> {

  final String name,phone;
  _MyPageState(this.name, this.phone);

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  String _name,_email,_phone,_password;
  var _formKey = GlobalKey<FormState>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController(text: name);
    phoneController = TextEditingController(text: phone);
    FocusManager.instance.primaryFocus.unfocus();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Splash Screen"),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text("Name : "+name.toString()),
                  Image.network(
                    "https://static.toiimg.com/photo/72975551.cms",
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (item) => item.length > 5 ? null : "Enter Valid Name",
                    onChanged: (item)=> setState(() => _name = item),
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Name',
                        labelText: 'Name'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (item) => EmailValidator.validate(item) ? null : "Please enter a valid email",
                    onChanged: (item){
                      setState(() {
                        _email = item;
                      });
                    },
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Email',
                        labelText: 'Email'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                   // initialValue: phone,
                    validator: (item) => item.length == 10 ? null : "Enter Valid Phone",
                    onChanged: (item)=> setState(() => _phone = item),
                    controller: phoneController,
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Mobile',
                        labelText: 'Mobile'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (item) => item.length > 6 ? null : "Enter 6 characters",
                    onChanged: (item)=> setState(() => _name = item),
                    obscureText: true,
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Password',
                        labelText: 'Password'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {

                        if(_formKey.currentState.validate()){
                          print("Result : "+nameController.text+"\n"
                              +emailController.text+"\n"
                              +phoneController.text+"\n"
                              +passwordController.text+"\n");

                          nameController.clear();
                          emailController.clear();
                          phoneController.clear();
                          passwordController.clear();

                          Navigator.push(context, MaterialPageRoute(builder: (_) => SecondPage()));
                        }else{
                          print("No data Found");
                        }

                      },
                      color: Colors.deepOrange,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

