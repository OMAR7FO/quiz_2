import 'package:flutter/material.dart';
import 'package:quiz_2/core/utils/color_manager.dart';

class ThemeManager {
  static final ThemeData appTheme = ThemeData(
    primaryColor: ColorManager.primaryColorLight,
    fontFamily: "Manrope",
  );
}
/*
Weight Size Color   Line-Height
800    50   1E222B  62
800    50   FAFBFD  62
800    26   FFFFFF  35
800    26   1E222B  35
800    11   F8F9FB  15
-------------------------
700    30   FAFBFD  30
700    20   1E222B  26
700    20   000000  26
700    18   1E222B  22
700    16   2A4BA0  24
-------------------------
600    22   F8F9FB  30.05
600    20   000000  27
600    16   1E222B  24
600    14   1E222B  20
600    14   FAFBFD  20
600    14   616A7D  20
600    14   2A4BA0
600    14   3F3F3F  19
600    13   1E222B  17
-------------------------
500    18   B2BBCE  22
500    14   8891A5  19
500    14   F8F9FB  19
500    14   1E222B  19
500    13   FFFFFF  17
-------------------------
400    30   1E222B  38
400    26   1E222B  35
400    16   1E222B  24
400    16   2A4BA0  24
400    16   8891A5
400    16   616A7D  24
400    14   1E222B  20
400    14   B2BBCE  20
400    14   8891A5  20
400    12   616A7D  16
400    12   FAFBFD  16
400    11   8891A5  11
-------------------------
300    50   FAFBFD  62
300    50   1E222B  26
300    20   FFFFFF  27
*/
