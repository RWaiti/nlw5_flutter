import 'package:flutter/material.dart';
import 'package:nlw5_flutter/challenge/widget/next_button/next_button_widget.dart';
import 'package:nlw5_flutter/core/app_images.dart';
import 'package:nlw5_flutter/core/app_text_styles.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int qtyRight;
  const ResultPage(
      {Key? key,
      required this.title,
      required this.length,
      required this.qtyRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.trophy),
                SizedBox(height: 40),
                if (qtyRight / length >= 0.5)
                  Text("Parabéns!", style: AppTextStyles.heading40),
                if (qtyRight / length < 0.5)
                  Text.rich(
                    TextSpan(
                        text: "Quase lá!\n",
                        style: AppTextStyles.heading40,
                        children: [
                          TextSpan(
                              text: "Continue Tentando!",
                              style: AppTextStyles.heading)
                        ]),
                  ),
                SizedBox(height: 16),
                Text(
                  "Você concluiu",
                  style: AppTextStyles.body,
                ),
                Text(
                  title,
                  style: AppTextStyles.bodyBold,
                ),
                Text(
                  "com $qtyRight de $length acertos.",
                  style: AppTextStyles.body,
                ),
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: Row(
                    children: [
                      Expanded(
                          child: NextButtonWidget.purple(
                              label: "Compartilhar",
                              onTap: () {
                                Share.share(
                                    'check out my website https://example.com');
                              })),
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 68),
                  child: Row(
                    children: [
                      Expanded(
                          child: NextButtonWidget.white(
                              label: "Voltar ao início",
                              onTap: () {
                                Navigator.pop(context);
                              })),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
