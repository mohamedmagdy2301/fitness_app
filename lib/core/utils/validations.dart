/*
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class Validation {
  static String? Function(String?) validatePassword(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).passwordRequired;
      } else if (value.length < 6) {
        return S.of(context).passwordMinLength;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateConfirmPassword(
      BuildContext context, String? password) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).confirmPasswordRequired;
      } else if (value != password) {
        return S.of(context).passwordsDoNotMatch;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateName(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).nameRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateOTP(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).otpRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validatePhoto(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).photoRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateStreetName(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).streetNameRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateBuilding(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).buildingRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateFloor(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).floorRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateApartment(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).apartmentRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateType(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).typeRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateArea(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).areaRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateGender(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).genderRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateAge(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).ageRequired;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validatePhone(BuildContext context) {
    return (String? value) {
      final saudiPhoneRegex = RegExp(r'^(?:\+9665|5)[0-9]{8}$');
      if (value == null || value.isEmpty) {
        return S.of(context).phoneRequired;
      } else if (!saudiPhoneRegex.hasMatch(value)) {
        return S.of(context).invalidPhone;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateEmail(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).emailRequired;
      } else if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value)) {
        return S.of(context).invalidEmail;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateNationalId(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).nationalIdRequired;
      } else if (value.length < 14) {
        return S.of(context).invalidNationalId;
      } else {
        return null;
      }
    };
  }

  static String? Function(String?) validateDateOfBirth(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).dobRequired;
      } else if (value.length < 10) {
        return S.of(context).invalidDob;
      } else {
        return null;
      }
    };
  }
}
*/
