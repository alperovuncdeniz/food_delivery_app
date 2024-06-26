import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool isCvvFocused = false;

  FocusNode temporaryFocusNode = FocusNode();

  void userTappedPay() async {
    FocusScope.of(context).requestFocus(temporaryFocusNode);
    if (formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Confirm Payment"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Card Number: $cardNumber"),
                  Text("Expiry Date: $expiryDate"),
                  Text("Card Holder Name: $cardHolderName"),
                  Text("CVV: $cvvCode"),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  FocusScope.of(context).unfocus();
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  FocusScope.of(context).unfocus();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeliveryProgressPage(),
                    ),
                  );
                },
                child: const Text("Yes"),
              ),
            ],
          );
        },
      );
    }
    FocusScope.of(context).requestFocus(temporaryFocusNode);
  }

  @override
  void dispose() {
    temporaryFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Checkout"),
        ),
        body: Column(
          children: [
            CreditCardWidget(
              isHolderNameVisible: true,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              obscureCvv: true,
              formKey: formKey,
            ),
            const Spacer(),
            MyButton(
              onTap: userTappedPay,
              text: "Pay Now",
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
