import 'dart:math';

import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';
import '../models/myth_fact.dart';
import '../util/app_colors.dart';

/// A card that starts on its "myth" (red) side and flips with a 3D
/// rotation to reveal the "fact" (green) side when tapped. Tapping again
/// flips it back. Each card manages its own flip state independently.
class MythFactCard extends StatefulWidget {
  final MythFact data;
  final double height;

  const MythFactCard({super.key, required this.data, this.height = 150});

  @override
  State<MythFactCard> createState() => _MythFactCardState();
}

class _MythFactCardState extends State<MythFactCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _showingFact = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    if (_showingFact) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    setState(() {
      _showingFact = !_showingFact;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          // Controller goes 0 -> 1 across the whole flip (0 -> pi radians).
          final angle = _controller.value * pi;
          final showFrontFace = angle <= pi / 2;

          final content = showFrontFace
              ? _CardFace(
                  height: widget.height,
                  label: l10n.mythLabel,
                  icon: Icons.close,
                  headerColor: AppColors.mythRed,
                  bodyText: widget.data.myth,
                )
              : Transform(
                  // Counter-rotate the back face so its text isn't mirrored.
                  transform: Matrix4.identity()..rotateY(pi),
                  alignment: Alignment.center,
                  child: _CardFace(
                    height: widget.height,
                    label: l10n.factLabel,
                    icon: Icons.check,
                    headerColor: AppColors.factGreen,
                    bodyText: widget.data.fact,
                  ),
                );

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // perspective
              ..rotateY(angle),
            child: content,
          );
        },
      ),
    );
  }
}

/// One visual face (front or back) of the flip card: a colored header
/// strip with a label/icon, and a white body with the statement text.
class _CardFace extends StatelessWidget {
  final double height;
  final String label;
  final IconData icon;
  final Color headerColor;
  final String bodyText;

  const _CardFace({
    required this.height,
    required this.label,
    required this.icon,
    required this.headerColor,
    required this.bodyText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: AppColors.cardWhite,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: headerColor,
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(width: 4),
                Icon(icon, color: Colors.white, size: 14),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Text(
                  bodyText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textDark,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}