import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:mas_app/controllers/auth_controller/verification_controler.dart';
import 'package:mas_app/view/widgets/custom_button.dart';

class VerificationCard extends GetView<VerificationController> {
  const VerificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 8,
      child: Container(
        color: Theme.of(context).colorScheme.background,
        padding: const EdgeInsets.all(8),
        height: 350,
        width: 350,
        // alignment: Alignment.center,
        child: Form(
          key: controller.formKeyState,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "subTitle",
              ),
              const Divider(
                indent: 10,
                endIndent: 10,
              ),
              OtpTextField(
                numberOfFields: 4,
                focusedBorderColor: Theme.of(context).colorScheme.primary,
                fieldWidth: 60,
                fieldHeight: 60,
                borderRadius: const BorderRadius.all(Radius.circular(60)),
                filled: true,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  // showDialog(
                  //     context: context,
                  //     builder: (context){
                  //     return AlertDialog(
                  //         title: Text("Verification Code"),
                  //         content: Text('Code entered is $verificationCode'),
                  //     );
                  //     }
                  // );
                }, // end onSubmit
              ),
              const Gap(10),
              CustomButton(
                height: 45,
                borderRadius: BorderRadius.circular(50),
                text: const Text('continue (step 2 of 3)'),
                // icon: const Icon(Icons.login),
                onPressed: controller.onConfirm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class VerificationInputFieldWidget extends StatelessWidget {
//   const VerificationInputFieldWidget({
//     super.key,
//     required this.controller,
//   });

//   final VerificationController controller;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         for (int i = 0; i < controller.codeLength; i++)
//           SizedBox(
//             width: 60,
//             child: TextFormField(
//               validator: (value) => value!.isEmpty ? '' : null,
//               controller: controller.textController[i],
//               keyboardType: const TextInputType.numberWithOptions(),
//               onChanged: (value) {
//                 if (value.isNotEmpty) {
//                   FocusScope.of(context).nextFocus();
//                 }
//               },
//               autofocus: i == 0 ? true : false,
//               maxLength: 1,
//               textInputAction: i == controller.codeLength - 1
//                   ? TextInputAction.done
//                   : TextInputAction.next,
//               textAlign: TextAlign.center,
//               decoration: const InputDecoration(
//                 fillColor: Colors.white,
//                 filled: true,
//                 contentPadding: EdgeInsets.all(20),
//                 border: OutlineInputBorder(
//                     borderSide: BorderSide(),
//                     borderRadius: BorderRadius.all(Radius.circular(30))),
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
