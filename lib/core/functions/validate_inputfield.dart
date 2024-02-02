enum AuthenticationStatus {
  userCreated,
  weakPassword,
  emailAlreadyInUse,
  userSignedIn,
  userNotFound,
  wrongPassword,
}

// Future<void> createUser(
//     {required String email, required String password}) async {
//   try {
//     await FirebaseAuth.instance
//         .createUserWithEmailAndPassword(email: email, password: password);
//     //return AuthenticationStatus.userCreated;
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'weak-password') {
//       throw Exception('waek password');
//       //return AuthenticationStatus.weakPassword;
//     } else if (e.code == 'email-already-in-use') {
//       throw Exception('email already in use');
//       //return AuthenticationStatus.emailAlreadyInUse;
//     }
//   } catch (e) {
//     throw Exception(e);
//   }
// }

//-- Sign in function

// Future<void> signInUser(
//     {required String email, required String password}) async {
//   try {
//     await FirebaseAuth.instance
//         .signInWithEmailAndPassword(email: email, password: password);
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'user-not-found') {
//       throw Exception('user not found');
//       // AuthenticationStatus.userNotFound;
//     } else if (e.code == 'wrong-password') {
//       throw Exception('wrong password');
//       //return AuthenticationStatus.wrongPassword;
//     } else {
//       throw Exception(e.code);
//     }
//   } catch (e) {
//     throw Exception(e as String);
//   }
// }

/////////////  validate email     ///////////////////////
final RegExp emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

String? validateEmail(String? value) {
  if (value!.isEmpty) {
    return 'Email is required';
  } else if (!emailRegExp.hasMatch(value)) {
    return 'Enter a valid email address';
  }
  return null;
}

//////////   validate password   /////////////////////
String? validatePassword(String? value) {
  if (value!.isEmpty) {
    return 'Password is required';
  } else if (value.length < 6) {
    return 'Password must be at least 6 characters long';
  } else if (!value.contains(RegExp(r'[a-zA-Z]'))) {
    return 'Password must contain at least one letter';
  } else if (!value.contains(RegExp(r'[0-9]'))) {
    return 'Password must contain numbers';
  }
  return null;
}

String? validateUserName(String? value) {
  if (value!.isEmpty) {
    return 'username is required';
  }
  return null;
}

// String getTime(DateTime date) {
//   return date.hour > 12
//       ? '${date.hour - 12}:${date.minute} PM'
//       : '${date.hour}:${date.minute} AM';
// }

// Map<String, int> getDateDifference(DateTime inputDate) {
//   // Get the current date and time
//   DateTime currentDate = DateTime.now();

//   // Calculate the difference between the input date and the current date
//   Duration difference = currentDate.difference(inputDate);

//   // Extract the individual components of the difference

//   int days = difference.inDays;
//   int hours = difference.inHours % 24;
//   int minutes = difference.inMinutes % 60;

//   return {'days': days, 'hours': hours, 'minutes': minutes};
// }

// String? getDateTime(DateTime? before, DateTime current) {
//   before = before ?? current;
//   DateTime now = DateTime.now();
//   int year = current.year;
//   int month = current.month;
//   int week = current.day;
//   int day = current.day;
//   int hour = current.hour;
//   int min = current.minute;

//   if (current.year < now.year) {
//     return before.year < current.year ? '$year-$month-$day' : null;
//   }
//   if (current.month < now.month) {
//     return before.month < current.month ? '$month-$day' : null;
//   }
//   if (current.day < now.day) {
//     var g = getDateDifference(current);

//     return g['days'] == 1 ? 'yesterday  $hour:$min' : '$month-$day  $hour:$min';
//     // before.day < current.day ? '$day  $hour:$min' : null;
//   }
//   if (current.hour < now.hour) {
//     return before.hour > current.hour ? getTime(current) : null;
//   }

//   return null;
// }
