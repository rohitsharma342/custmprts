import 'package:flutter/material.dart';
import '../config/theme.dart';
import '../models/product.dart';

class ColorSelector extends StatelessWidget {
  final List<ProductColor> colors;
  final ProductColor selectedColor;
  final Function(ProductColor) onColorSelected;

  const ColorSelector({
    super.key,
    required this.colors,
    required this.selectedColor,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: colors.map((color) {
        final isSelected = color.name == selectedColor.name;
        return GestureDetector(
          onTap: () => onColorSelected(color),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? AppTheme.primaryColor : Colors.transparent,
                width: 2,
              ),
            ),
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Color(color.colorValue),
                shape: BoxShape.circle,
                border: Border.all(
                  color: color.colorValue == 0xFFFFFFFF
                      ? AppTheme.textSecondary
                      : Colors.transparent,
                  width: 1,
                ),
              ),
              child: isSelected
                  ? Icon(
                      Icons.check_rounded,
                      size: 18,
                      color: color.colorValue == 0xFFFFFFFF ||
                              color.colorValue == 0xFFFFFDD0 ||
                              color.colorValue == 0xFFF5F5DC
                          ? AppTheme.backgroundColor
                          : Colors.white,
                    )
                  : null,
            ),
          ),
        );
      }).toList(),
    );
  }
}