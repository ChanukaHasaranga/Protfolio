import 'package:flutter/material.dart';
import 'package:mysite/app/utils/contact_utils.dart';
import 'package:mysite/app/widgets/custom_text_heading.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Space.y(10.w)!,
        CustomSectionHeading(text: contactHeadding),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: contactSubHeadding),
        ),
        Space.y(5.w)!,
        InkWell(
          onTap: () =>_launchGmail(gmail),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            decoration: BoxDecoration(
                gradient: buttonGradi, borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
          ),
        ),
        Space.y(10.w)!,
        Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 50,
            children: contactUtils
                .asMap()
                .entries
                .map((e) => IconButton(
                      icon: Image.network(
                        e.value.icon,
                        color: theme.textColor,
                      ),
                      onPressed: () => openURL(e.value.url),
                      highlightColor: Colors.white54,
                      iconSize: 21,
                    ))
                .toList()),
        Space.y(5.w)!,
        Container(color: Colors.white.withOpacity(0.2), height: 1),
      ],
    );
  }
  Future<void> _launchGmail(String recipient) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'chanukahasaranga@gmail.com',
      queryParameters: {
        'subject': 'Subject of the email',
        'body': 'Body of the email',
      },
    );

    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch Gmail';
    }
  }
}
