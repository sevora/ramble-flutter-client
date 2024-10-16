import 'package:flutter/material.dart';
import '../../themes/light_mode_theme.dart';
import '../../themes/typography_theme.dart';
import '../../utilities/utilities.dart';
import '../reusable/button.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                Icons.settings_rounded,
                color: LightModeTheme().primaryText,
                size: 30.0,
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  'Options',
                  style: TypographyTheme().bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 25.0,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
            ].divide(const SizedBox(width: 10.0)),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: BoxDecoration(
                color: LightModeTheme().secondaryBackground,
              ),
              child: ButtonWidget(
                onPressed: () async {
                  // context.goNamed('LogIn');
                },
                text: 'Log-out',
                options: ButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                  const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: LightModeTheme().error,
                  textStyle: TypographyTheme().titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
