// ignore_for_file: non_constant_identifier_names, duplicate_ignore
class FontsConstants {
  static FontsConstants? _instance;
  static FontsConstants get instance {
    _instance ??= FontsConstants._init();
    return _instance!;
  }

  FontsConstants._init();

  // MARK: - IRISH
  final IRISH_REGULAR = 'IRISH_REGULAR';

    // MARK: - INTER
  final INTER_BOLD = 'INTER_BOLD';
  final INTER_MEDIUM = 'INTER_MEDIUM';
  final INTER_REGULAR = 'INTER_REGULAR';
  final INTER_SEMIBOLD = 'INTER_SEMIBOLD';
  final INTER_LIGHT = 'INTER_LIGHT';

    // MARK: - INTER
  final CUSTOM_ICONS = 'CUSTOM_ICONS';
      // MARK: - POPPINS
  final POPPINS_BOLD = 'POPPINS_BOLD';
  final POPPINS_LIGHT = 'POPPINS_LIGHT';
  final POPPINS_MEDIUM = 'POPPINS_MEDIUM';
  final POPPINS_REGULAR = 'POPPINS_REGULAR';
  final POPPINS_SEMIBOLD = 'POPPINS_SEMIBOLD';

}
