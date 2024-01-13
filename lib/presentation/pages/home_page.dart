import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:fluffy_challenge_week_1/core/extensions/extensions.dart';
import 'package:fluffy_challenge_week_1/presentation/widgets/custom_list_tile.dart';
import 'package:fluffy_challenge_week_1/presentation/widgets/custom_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screwdriver/flutter_screwdriver.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final manager = AdaptiveTheme.of(context);
    var totalBundleValue = '300';
    var currentBundleValue = '94.3';
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/telecel_logo.png',
                          height: 28,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Text(
                          "Good day, Fluffy",
                          //TODO: Choose greeting based on time of day
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (context.theme.brightness == Brightness.dark) {
                              manager.setThemeMode(AdaptiveThemeMode.light);
                            } else {
                              manager.setThemeMode(AdaptiveThemeMode.dark);
                            }
                          },
                          child: Icon(
                              context.theme.brightness == Brightness.dark
                                  ? EneftyIcons.sun_outline
                                  : EneftyIcons.moon_outline),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Icon(EneftyIcons.notification_outline),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Overview'.toUpperCase(),
                  style: context.theme.textTheme.titleMedium!.copyWith(
                      color: theme.textColor,
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomInfoSection(
                children: [
                  const Icon(EneftyIcons.radar_3_outline),
                  const SizedBox(
                    height: 12,
                  ),
                  LinearProgressIndicator(
                    value: double.parse(currentBundleValue) /
                        double.parse(totalBundleValue),
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Your Data Balance',
                    style: TextStyle(
                        color: context.theme.colorScheme.onSurface
                            .withOpacity(0.5)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '$currentBundleValue ',
                          style: context.theme.textTheme.headlineMedium!
                              .copyWith(
                                  color: context.theme.colorScheme.onSurface,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: 'GB left',
                              style: context.theme.textTheme.headlineMedium!
                                  .copyWith(
                                      color:
                                          context.theme.colorScheme.onSurface,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'of  ',
                          style: context.theme.textTheme.headlineMedium!
                              .copyWith(
                                  color: context.theme.colorScheme.onSurface
                                      .withOpacity(0.5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: '$totalBundleValue ',
                              style: context.theme.textTheme.headlineMedium!
                                  .copyWith(
                                      color: context.theme.colorScheme.onSurface
                                          .withOpacity(0.5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: 'GB',
                              style: context.theme.textTheme.headlineMedium!
                                  .copyWith(
                                      color: context.theme.colorScheme.onSurface
                                          .withOpacity(0.5),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomInfoSection(
                      children: [
                        const Icon(EneftyIcons.money_recive_outline),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Your airtime balance',
                          style: TextStyle(
                            color: context.theme.colorScheme.onSurface
                                .withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '300 ',
                          style: context.theme.textTheme.headlineMedium!
                              .copyWith(
                                  color: context.theme.colorScheme.onSurface,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: CustomInfoSection(
                      children: [
                        const Icon(EneftyIcons.money_send_outline),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Pay Bill',
                          style: TextStyle(
                              color: context.theme.colorScheme.onSurface
                                  .withOpacity(0.5)),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '34 ',
                          style: context.theme.textTheme.headlineMedium!
                              .copyWith(
                                  color: context.theme.colorScheme.onSurface,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Manage'.toUpperCase(),
                  style: context.theme.textTheme.titleMedium!.copyWith(
                      color: theme.textColor,
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomInfoSection(
                padding: EdgeInsets.zero,
                children: [
                  CustomListTile(
                    leading: Icon(EneftyIcons.money_add_bold),
                    label: 'Top up airtime or data',
                    subtitle: 'Recharge airtime or data to this number',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                  CustomListTile(
                    leading: Icon(EneftyIcons.security_safe_bold),
                    label: 'Subscriptions',
                    subtitle: 'Manage your subscriptions and services',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                  CustomListTile(
                    leading: Icon(EneftyIcons.money_add_bold),
                    label: 'Top up airtime or data',
                    subtitle: 'Recharge airtime or data to this number',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                  CustomListTile(
                    leading: Icon(EneftyIcons.security_safe_bold),
                    label: 'Subscriptions',
                    subtitle: 'Manage your subscriptions and services',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                  CustomListTile(
                    leading: Icon(EneftyIcons.money_add_bold),
                    label: 'Top up airtime or data',
                    subtitle: 'Recharge airtime or data to this number',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                  CustomListTile(
                    leading: Icon(EneftyIcons.security_safe_bold),
                    label: 'Subscriptions',
                    subtitle: 'Manage your subscriptions and services',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                  CustomListTile(
                    leading: Icon(EneftyIcons.money_add_bold),
                    label: 'Top up airtime or data',
                    subtitle: 'Recharge airtime or data to this number',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                  CustomListTile(
                    leading: Icon(EneftyIcons.security_safe_bold),
                    label: 'Subscriptions',
                    subtitle: 'Manage your subscriptions and services',
                    trailing: Icon(EneftyIcons.arrow_right_3_outline),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
