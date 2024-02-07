import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      elevation: 5,
      child: Container(
        color: Theme.of(context).colorScheme.background,
        padding: const EdgeInsets.all(15),
        height: 300,
        width: 350,
        // alignment: Alignment.center,
        child: Form(
          key: controller.formKeyState,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < controller.codeLength; i++)
                    SizedBox(
                      width: 60,
                      child: TextFormField(
                        validator: (value) => value!.isEmpty ? '' : null,
                        controller: controller.textController[i],
                        keyboardType: const TextInputType.numberWithOptions(),
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        autofocus: i == 0 ? true : false,
                        maxLength: 1,
                        textInputAction: i == controller.codeLength - 1
                            ? TextInputAction.done
                            : TextInputAction.next,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.all(20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                      ),
                    ),
                ],
              ),
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
