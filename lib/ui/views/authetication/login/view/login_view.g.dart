part of './login_view.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
    required this.appStringConstants,
    required this.formKey,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CustomElevatedButton(
        title: appStringConstants!.signUpElevatedButton,
        onPressed: () {
          if (formKey.currentState?.validate() ?? false) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => const HomeView()));
          }
        },
        color: context.chasm,
        textColor: context.white,
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.firstNameController,
    required this.appStringConstants,
    required this.lastNameController,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController firstNameController;
  final AppStringConstants? appStringConstants;
  final TextEditingController lastNameController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: firstNameController,
          labelText: appStringConstants!.signUpFirstNameField,
          obscureText: false,
        ),
        CustomTextField(
          controller: lastNameController,
          labelText: appStringConstants!.signUpLastNameField,
          obscureText: false,
        ),
        Padding(
          padding: context.paddingX2Vertical,
          child: CustomTextField(
            controller: emailController,
            labelText: appStringConstants!.signUpEmail,
            obscureText: false,
          ),
        ),
        Text(
          appStringConstants!.signUpEmailMessage,
          style:  Theme.of(context)
          .textTheme
          .caption
          ?.copyWith(color: context.heatherGrey),
        ),
        
      ],
    );
  }
}
