import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: const AddNotesForm(),
      ),
    );
  }
}


class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode ,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
           CustomTextField(
            hint: "title",
            onSaved: (value){
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
           CustomTextField(
            hint: "content",
            onSaved: (value){
              subTitle = value;
            },
            maxLines: 7,
          ),
          const SizedBox(
            height: 16,
          ),
           CustomButton(onTap: (){
            if(formKey.currentState!.validate())
              {
                formKey.currentState!.save();
            }else{
              autoValidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
