// Form(
// key: _formKey,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// getTranslated(
// context,
// 'Login_page',
// ),
// style: TextStyle(
// color: Colors.deepOrange,
// fontWeight: FontWeight.bold,
// fontSize: 22),
// ),
// ),
// SizedBox(
// height: 40,
// ),
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 20),
// child: StreamBuilder<String>(
// stream: bloc.email,
// builder: (context, snapshot) => TextFormField(
// validator: (val) =>
// val.isEmpty ? 'Enter an Email' : null,
// onChanged: (val) {
// setState(() => email = val);
// },
// keyboardType: TextInputType.emailAddress,
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(35),
// borderSide: BorderSide(
// color: Colors.deepOrange)),
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(35),
// ),
// hintText: "Enter email",
// hintStyle: TextStyle(color: Colors.white),
// labelText: "Email",
// labelStyle:
// TextStyle(color: Colors.deepOrange),
// errorText: snapshot.error),
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold),
// ),
// ),
// ),
// SizedBox(
// height: 10,
// ),
// Padding(
// padding: EdgeInsets.symmetric(horizontal: 20),
// child: StreamBuilder<String>(
// stream: bloc.password,
// builder: (context, snapshot) => TextFormField(
// validator: (val) => val.length < 6
// ? 'Enter a Password 6+ chars long'
// : null,
// onChanged: (val) {
// setState(() => password = val);
// },
// keyboardType: TextInputType.text,
// obscureText: true,
// decoration: InputDecoration(
// enabledBorder: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(35),
// borderSide: BorderSide(
// color: Colors.deepOrange)),
// border: OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(35)),
// hintText: "Enter password",
// hintStyle: TextStyle(color: Colors.white),
// labelText: "Password",
// labelStyle:
// TextStyle(color: Colors.deepOrange),
// errorText: snapshot.error),
// style: TextStyle(
// color: Colors.white,
// fontWeight: FontWeight.bold),
// ),
// ),
// ),
//
// // StreamBuilder<bool>(
// //   // stream: bloc.submitCheck,
// //   builder: (context, snapshot) => MaterialButton(
// //     shape: RoundedRectangleBorder(
// //       borderRadius: BorderRadius.circular(25),
// //       side: BorderSide(color: Colors.black),
// //     ),
// //     // color: Colors.tealAccent,
// // SizedBox(height: 20,),
// MaterialButton(
// onPressed: () async {
// dynamic result = await _auth.signInAnon();
// if (result == null) {
// print('error signing in');
// } else {
// Navigator.pushNamed(context, homeRoute);
// print('id:' + result.uid);
// }
// },
// child: Text(
// 'Anonymous ?',
// style: TextStyle(color: Colors.deepOrange),
// ),
// ),
//
// MaterialButton(
// onPressed: () {
// widget.toggleView();
// },
// child: Text(
// "Don't have an Account ? Register",
// style: TextStyle(color: Colors.deepOrange),
// ),
// ),
//
// SizedBox(
// height: 0,
// ),
// MaterialButton(
// color: Colors.deepOrange,
// onPressed: () async {
// if (_formKey.currentState.validate()) {
// dynamic result =
// await _auth.signInWithEmailAndPassword(
// email, password);
// if (result = null) {
// setState(() => error =
// 'Could not sign in with those credentials');
// }
// }
// },
// child: Text('Sign in',
// style: TextStyle(color: Colors.white)),
// ),
// SizedBox(
// height: 10,
// ),
// Text(
// error,
// style: TextStyle(color: Colors.red, fontSize: 15),
// )
//
// //   onPressed:(){
// // Navigator.of(context)
// //     .push(MaterialPageRoute(builder: (context) => PageTwo())
// // );
// // }
// ]),
// ),