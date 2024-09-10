import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koi_farm/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ExportIndo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 1944;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFDCDCDC),
      ),
      child: SizedBox(
        width: 121.5 * fem,
        child: Container(
          padding:
              EdgeInsets.fromLTRB(7.6 * fem, 8.9 * fem, 4.4 * fem, 3.5 * fem),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 8.9 * fem, 3.5 * fem, 0 * fem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.5 * fem),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33B0B0B0),
                      offset: Offset(0 * fem, 0.8 * fem),
                      blurRadius: 22.3999996185,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: -14.6 * fem,
                      top: -13.5 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18.8 * fem),
                        child: SizedBox(
                          width: 26.1 * fem,
                          height: 25.5 * fem,
                          child: SvgPicture.asset(
                            'assets/vectors/patern_1_x2.svg',
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          right: -1.7 * fem,
                          top: 13.4 * fem,
                          child: Opacity(
                            opacity: 0.9,
                            child: Container(
                              width: 25.9 * fem,
                              height: 15.9 * fem,
                              child: Opacity(
                                opacity: 0.6,
                                child: SizedBox(
                                  width: 73.1 * fem,
                                  height: 63.7 * fem,
                                  child: SvgPicture.asset(
                                    'assets/vectors/group_3_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 16.1 * fem),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.003, -1.672),
                                    end: Alignment(0.029, 1.674),
                                    colors: <Color>[
                                      Color(0xFFFFFFFF),
                                      Color(0xF5FFFFFF),
                                      Color(0x00FFFFFF)
                                    ],
                                    stops: <double>[0, 0.44, 0.99],
                                  ),
                                ),
                                child: Container(
                                  width: 23.4 * fem,
                                  height: 10.8 * fem,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x08000000),
                                    offset: Offset(0 * fem, 0 * fem),
                                    blurRadius: 18,
                                  ),
                                ],
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    2 * fem, 2.3 * fem, 2 * fem, 2.5 * fem),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 1.8 * fem),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'EasyPay',
                                            style: GoogleFonts.getFont(
                                              'Montserrat',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 1.5 * fem,
                                              color: Color(0xFF000000),
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Smart Finance Easy Transactions',
                                                style: GoogleFonts.getFont(
                                                  'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 1.5 * fem,
                                                  height: 0.1 * fem,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 2.8 * fem),
                                      child: SizedBox(
                                        width: 19.4 * fem,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0.8 * fem),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF3B38EB),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          1 * fem),
                                                ),
                                                child: Container(
                                                  width: 19.4 * fem,
                                                  padding: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      1 * fem,
                                                      0 * fem,
                                                      1 * fem),
                                                  child: Text(
                                                    'Sign In',
                                                    style: GoogleFonts.getFont(
                                                      'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 1.1 * fem,
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0.7 * fem),
                                              child: SizedBox(
                                                width: 19.4 * fem,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: 6.1 * fem,
                                                      height: 2.9 * fem,
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.7 * fem,
                                                              0 * fem,
                                                              0.7 * fem),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xFFE2E8F0)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    0.6 * fem),
                                                      ),
                                                      child: SizedBox(
                                                        width: 1.2 * fem,
                                                        height: 1.4 * fem,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/path_4_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 6.1 * fem,
                                                      height: 2.9 * fem,
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.7 * fem,
                                                              0 * fem,
                                                              0.7 * fem),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xFFE2E8F0)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    0.6 * fem),
                                                      ),
                                                      child: SizedBox(
                                                        width: 1.4 * fem,
                                                        height: 1.4 * fem,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/logo_googleg_48_dp_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: 6.1 * fem,
                                                      height: 2.9 * fem,
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.7 * fem,
                                                              0 * fem,
                                                              0.7 * fem),
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Color(
                                                                0xFFE2E8F0)),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    0.6 * fem),
                                                      ),
                                                      child: SizedBox(
                                                        width: 1.4 * fem,
                                                        height: 1.4 * fem,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/path_14_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                text:
                                                    'do you not have account? ',
                                                style: GoogleFonts.getFont(
                                                  'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 0.8 * fem,
                                                  height: 0.1 * fem,
                                                  color: Color(0xFF757575),
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: 'Sign up',
                                                    style: GoogleFonts.getFont(
                                                      'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 0.8 * fem,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      height: 0.1 * fem,
                                                      color: Color(0xFF3B38EB),
                                                      decorationColor:
                                                          Color(0xFF3B38EB),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: 19.4 * fem,
                                        height: 2.1 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF181818),
                                            borderRadius: BorderRadius.circular(
                                                6.3 * fem),
                                          ),
                                          child: Container(
                                            width: 8.4 * fem,
                                            height: 0.3 * fem,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          right: -11.1 * fem,
                          bottom: 3.1 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.8 * fem),
                            child: SizedBox(
                              width: 23.6 * fem,
                              height: 28 * fem,
                              child: SvgPicture.asset(
                                'assets/vectors/patern_x2.svg',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5.4 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                  'assets/images/object_photo.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 18.8 * fem,
                              height: 20 * fem,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10.9 * fem,
                          top: 2.4 * fem,
                          child: Container(
                            width: 1.3 * fem,
                            height: 1.7 * fem,
                            child: SizedBox(
                              width: 1.3 * fem,
                              height: 1.7 * fem,
                              child: SvgPicture.asset(
                                'assets/vectors/logo_x2.svg',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 1.5 * fem,
                          right: 1.5 * fem,
                          top: 1.5 * fem,
                          child: SizedBox(
                            width: 23.4 * fem,
                            height: 4.1 * fem,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0.1 * fem, 0 * fem),
                                      child: Text(
                                        '9',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.9 * fem,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        ':',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.9 * fem,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '41',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 0.9 * fem,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0.2 * fem, 0 * fem, 0.1 * fem),
                                  child: SizedBox(
                                    width: 4.7 * fem,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.1 * fem, 0.5 * fem, 0.1 * fem),
                                          child: SizedBox(
                                            width: 1.1 * fem,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0.4 * fem,
                                                      0.1 * fem,
                                                      0 * fem),
                                                  child: SizedBox(
                                                    width: 0.2 * fem,
                                                    height: 0.3 * fem,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/bar_15_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0.3 * fem,
                                                      0.1 * fem,
                                                      0 * fem),
                                                  child: SizedBox(
                                                    width: 0.2 * fem,
                                                    height: 0.4 * fem,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/bar_23_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0.1 * fem,
                                                      0.1 * fem,
                                                      0 * fem),
                                                  child: SizedBox(
                                                    width: 0.2 * fem,
                                                    height: 0.5 * fem,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/bar_32_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 0.2 * fem,
                                                  height: 0.6 * fem,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/bar_43_x2.svg',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0.5 * fem, 0 * fem),
                                          child: SizedBox(
                                            width: 1 * fem,
                                            height: 0.7 * fem,
                                            child: SvgPicture.asset(
                                              'assets/vectors/wifi_x2.svg',
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 1.5 * fem,
                                          height: 0.8 * fem,
                                          child: SvgPicture.asset(
                                            'assets/vectors/battery_2_x2.svg',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 8.9 * fem, 2.8 * fem, 0 * fem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.5 * fem),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33B0B0B0),
                      offset: Offset(0 * fem, 0.8 * fem),
                      blurRadius: 22.3999996185,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      1.5 * fem, 1.5 * fem, 1.5 * fem, 2.5 * fem),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 4.3 * fem),
                        child: SizedBox(
                          width: 23.4 * fem,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1.4 * fem),
                                child: SizedBox(
                                  width: 20.4 * fem,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0.1 * fem, 0 * fem),
                                            child: Text(
                                              '9',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 0.9 * fem,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 0 * fem),
                                            child: Text(
                                              ':',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 0.9 * fem,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '41',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 0.9 * fem,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0.2 * fem, 0 * fem, 0.1 * fem),
                                        child: SizedBox(
                                          width: 4.7 * fem,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0.1 * fem,
                                                    0.5 * fem,
                                                    0.1 * fem),
                                                child: SizedBox(
                                                  width: 1.1 * fem,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.4 * fem,
                                                                0.1 * fem,
                                                                0 * fem),
                                                        child: SizedBox(
                                                          width: 0.2 * fem,
                                                          height: 0.3 * fem,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/vectors/bar_11_x2.svg',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.3 * fem,
                                                                0.1 * fem,
                                                                0 * fem),
                                                        child: SizedBox(
                                                          width: 0.2 * fem,
                                                          height: 0.4 * fem,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/vectors/bar_22_x2.svg',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.1 * fem,
                                                                0.1 * fem,
                                                                0 * fem),
                                                        child: SizedBox(
                                                          width: 0.2 * fem,
                                                          height: 0.5 * fem,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/vectors/bar_31_x2.svg',
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 0.2 * fem,
                                                        height: 0.6 * fem,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/bar_41_x2.svg',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0.5 * fem,
                                                    0 * fem),
                                                child: SizedBox(
                                                  width: 1 * fem,
                                                  height: 0.7 * fem,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/wifi_2_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 1.5 * fem,
                                                height: 0.8 * fem,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/battery_x2.svg',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0.9 * fem, 0 * fem, 0.9 * fem, 0 * fem),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width: 20.4 * fem,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          width: 2.3 * fem,
                                          height: 2.3 * fem,
                                          child: SizedBox(
                                            width: 0.4 * fem,
                                            height: 1 * fem,
                                            child: SvgPicture.asset(
                                              'assets/vectors/vector_4_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Login ',
                                            style: GoogleFonts.getFont(
                                              'Montserrat',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 0.9 * fem,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0.5 * fem, 0 * fem, 0.5 * fem, 14.9 * fem),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  1.1 * fem, 0 * fem, 1.1 * fem, 2 * fem),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0.3 * fem),
                                    child: Text(
                                      'Silahkan Login !!',
                                      style: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 1.1 * fem,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'EasyPay, Paving the Way to Your Financial Future',
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 0.7 * fem,
                                      color: Color(0xFF9E9E9E),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 2 * fem),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0.8 * fem),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF9F9F9),
                                        borderRadius:
                                            BorderRadius.circular(0.8 * fem),
                                      ),
                                      child: SizedBox(
                                        width: 19.4 * fem,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              1.3 * fem,
                                              1 * fem,
                                              1.3 * fem,
                                              1 * fem),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0.3 * fem),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        'Email',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 0.8 * fem,
                                                          color:
                                                              Color(0xFF9E9E9E),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'nivographic@gmail.com',
                                                    style: GoogleFonts.getFont(
                                                      'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 1 * fem,
                                                      color: Color(0xFF1F1F1F),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0.5 * fem,
                                                    0 * fem,
                                                    0.5 * fem),
                                                width: 1.5 * fem,
                                                height: 1.5 * fem,
                                                child: SizedBox(
                                                  width: 1.5 * fem,
                                                  height: 1.5 * fem,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/sms_2_x2.svg',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 0.5 * fem),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF9F9F9),
                                            borderRadius: BorderRadius.circular(
                                                0.8 * fem),
                                          ),
                                          child: SizedBox(
                                            width: 19.4 * fem,
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  1.3 * fem,
                                                  1 * fem,
                                                  1.3 * fem,
                                                  1 * fem),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0.3 * fem),
                                                        child: Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Text(
                                                            'Password',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize:
                                                                  0.8 * fem,
                                                              color: Color(
                                                                  0xFF9E9E9E),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        '••••••••••••••',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Nunito Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 1 * fem,
                                                          height: 0.1 * fem,
                                                          letterSpacing:
                                                              0.3 * fem,
                                                          color:
                                                              Color(0xFF1F1F1F),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.6 * fem,
                                                        0 * fem,
                                                        0.6 * fem),
                                                    width: 1.5 * fem,
                                                    height: 1.5 * fem,
                                                    child: SizedBox(
                                                      width: 1.5 * fem,
                                                      height: 1.5 * fem,
                                                      child: SvgPicture.asset(
                                                        'assets/vectors/eye_10_x2.svg',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Forgot Password',
                                          style: GoogleFonts.getFont(
                                            'Montserrat',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 0.7 * fem,
                                            decoration:
                                                TextDecoration.underline,
                                            letterSpacing: 0 * fem,
                                            color: Color(0xFF000000),
                                            decorationColor: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 19.4 * fem,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 1.4 * fem),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFEBC438),
                                        borderRadius:
                                            BorderRadius.circular(1 * fem),
                                      ),
                                      child: Container(
                                        width: 19.4 * fem,
                                        padding: EdgeInsets.fromLTRB(
                                            0 * fem, 1 * fem, 0 * fem, 1 * fem),
                                        child: Text(
                                          'Login',
                                          style: GoogleFonts.getFont(
                                            'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 1.1 * fem,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Register',
                                      style: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 1.1 * fem,
                                        color: Color(0xFFEBC438),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 23.4 * fem,
                        height: 6.1 * fem,
                        child: Container(
                          width: 19.4 * fem,
                          height: 2.1 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF181818),
                              borderRadius: BorderRadius.circular(6.3 * fem),
                            ),
                            child: Container(
                              width: 8.4 * fem,
                              height: 0.3 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 8.9 * fem, 9.4 * fem, 0 * fem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.5 * fem),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33B0B0B0),
                      offset: Offset(0 * fem, 0.8 * fem),
                      blurRadius: 22.3999996185,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      1.5 * fem, 1.5 * fem, 1.5 * fem, 2.5 * fem),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 5.6 * fem),
                        child: SizedBox(
                          width: 23.4 * fem,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 1.4 * fem),
                                child: SizedBox(
                                  width: 20.4 * fem,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0.1 * fem, 0 * fem),
                                            child: Text(
                                              '9',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 0.9 * fem,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 0 * fem),
                                            child: Text(
                                              ':',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 0.9 * fem,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '41',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 0.9 * fem,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0.2 * fem, 0 * fem, 0.1 * fem),
                                        child: SizedBox(
                                          width: 4.7 * fem,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0.1 * fem,
                                                    0.5 * fem,
                                                    0.1 * fem),
                                                child: SizedBox(
                                                  width: 1.1 * fem,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.4 * fem,
                                                                0.1 * fem,
                                                                0 * fem),
                                                        child: SizedBox(
                                                          width: 0.2 * fem,
                                                          height: 0.3 * fem,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/vectors/bar_1_x2.svg',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.3 * fem,
                                                                0.1 * fem,
                                                                0 * fem),
                                                        child: SizedBox(
                                                          width: 0.2 * fem,
                                                          height: 0.4 * fem,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/vectors/bar_21_x2.svg',
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.1 * fem,
                                                                0.1 * fem,
                                                                0 * fem),
                                                        child: SizedBox(
                                                          width: 0.2 * fem,
                                                          height: 0.5 * fem,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/vectors/bar_3_x2.svg',
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 0.2 * fem,
                                                        height: 0.6 * fem,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/bar_44_x2.svg',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0.5 * fem,
                                                    0 * fem),
                                                child: SizedBox(
                                                  width: 1 * fem,
                                                  height: 0.7 * fem,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/wifi_1_x2.svg',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 1.5 * fem,
                                                height: 0.8 * fem,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/battery_1_x2.svg',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0.9 * fem, 0 * fem, 0.9 * fem, 0 * fem),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width: 20.4 * fem,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          width: 2.3 * fem,
                                          height: 2.3 * fem,
                                          child: SizedBox(
                                            width: 0.4 * fem,
                                            height: 1 * fem,
                                            child: SvgPicture.asset(
                                              'assets/vectors/vector_12_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Daftar Akun',
                                            style: GoogleFonts.getFont(
                                              'Montserrat',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 0.9 * fem,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0.5 * fem, 0 * fem, 0.5 * fem, 1.3 * fem),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  1.1 * fem, 0 * fem, 1.1 * fem, 2 * fem),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0.3 * fem),
                                    child: Text(
                                      'Daftar',
                                      style: GoogleFonts.getFont(
                                        'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 1.1 * fem,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'EasyPay, Paving the Way to Your Financial Future',
                                    style: GoogleFonts.getFont(
                                      'Montserrat',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 0.7 * fem,
                                      color: Color(0xFF9E9E9E),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0.8 * fem),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF9F9F9),
                                      borderRadius:
                                          BorderRadius.circular(0.8 * fem),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(
                                          1.3 * fem, 1 * fem, 0 * fem, 1 * fem),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 0.3 * fem),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Name',
                                                style: GoogleFonts.getFont(
                                                  'Montserrat',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 0.8 * fem,
                                                  color: Color(0xFF9E9E9E),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              'Muhammad Guntur Wijaya',
                                              style: GoogleFonts.getFont(
                                                'Montserrat',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 1 * fem,
                                                color: Color(0xFF1F1F1F),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0.8 * fem),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF9F9F9),
                                      borderRadius:
                                          BorderRadius.circular(0.8 * fem),
                                    ),
                                    child: SizedBox(
                                      width: 19.4 * fem,
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(1.3 * fem,
                                            1 * fem, 1.3 * fem, 1 * fem),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0.3 * fem),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Email',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 0.8 * fem,
                                                        color:
                                                            Color(0xFF9E9E9E),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'nivographic@gmail.com',
                                                  style: GoogleFonts.getFont(
                                                    'Montserrat',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 1 * fem,
                                                    color: Color(0xFF1F1F1F),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0.5 * fem,
                                                  0 * fem,
                                                  0.5 * fem),
                                              width: 1.5 * fem,
                                              height: 1.5 * fem,
                                              child: SizedBox(
                                                width: 1.5 * fem,
                                                height: 1.5 * fem,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/sms_1_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0.8 * fem),
                                  width: 19.4 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF9F9F9),
                                      borderRadius:
                                          BorderRadius.circular(0.8 * fem),
                                    ),
                                    child: SizedBox(
                                      width: 19.4 * fem,
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(1.3 * fem,
                                            1 * fem, 1.3 * fem, 1 * fem),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0.3 * fem),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Password',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 0.8 * fem,
                                                        color:
                                                            Color(0xFF9E9E9E),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '••••••••••••••',
                                                  style: GoogleFonts.getFont(
                                                    'Nunito Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 1 * fem,
                                                    height: 0.1 * fem,
                                                    letterSpacing: 0.3 * fem,
                                                    color: Color(0xFF1F1F1F),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0.6 * fem,
                                                  0 * fem,
                                                  0.6 * fem),
                                              width: 1.5 * fem,
                                              height: 1.5 * fem,
                                              child: SizedBox(
                                                width: 1.5 * fem,
                                                height: 1.5 * fem,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/eye_25_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 19.4 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF9F9F9),
                                      borderRadius:
                                          BorderRadius.circular(0.8 * fem),
                                    ),
                                    child: SizedBox(
                                      width: 19.4 * fem,
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(1.3 * fem,
                                            1 * fem, 1.3 * fem, 1 * fem),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0.3 * fem),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                      'Confirm Password',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 0.8 * fem,
                                                        color:
                                                            Color(0xFF9E9E9E),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  '••••••••••••••',
                                                  style: GoogleFonts.getFont(
                                                    'Nunito Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 1 * fem,
                                                    height: 0.1 * fem,
                                                    letterSpacing: 0.3 * fem,
                                                    color: Color(0xFF1F1F1F),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0.6 * fem,
                                                  0 * fem,
                                                  0.6 * fem),
                                              width: 1.5 * fem,
                                              height: 1.5 * fem,
                                              child: SizedBox(
                                                width: 1.5 * fem,
                                                height: 1.5 * fem,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/eye_24_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0.5 * fem, 0 * fem, 0.5 * fem, 7.8 * fem),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEBC438),
                            borderRadius: BorderRadius.circular(1 * fem),
                          ),
                          child: Container(
                            width: 19.4 * fem,
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 1 * fem, 0 * fem, 1 * fem),
                            child: Text(
                              'Register',
                              style: GoogleFonts.getFont(
                                'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 1.1 * fem,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 23.4 * fem,
                        height: 6.1 * fem,
                        child: Container(
                          width: 19.4 * fem,
                          height: 2.1 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF181818),
                              borderRadius: BorderRadius.circular(6.3 * fem),
                            ),
                            child: Container(
                              width: 8.4 * fem,
                              height: 0.3 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 8.9 * fem, 0 * fem, 0 * fem),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.5 * fem),
                  color: Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33B0B0B0),
                      offset: Offset(0 * fem, 0.8 * fem),
                      blurRadius: 22.3999996185,
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      0 * fem, 0.8 * fem, 0 * fem, 0.3 * fem),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0.8 * fem, 0 * fem, 0.8 * fem, 1.5 * fem),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1.6 * fem),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/header_section.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    1.5 * fem, 1.5 * fem, 1.5 * fem, 1.5 * fem),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0.9 * fem),
                                      child: SizedBox(
                                        width: 18.9 * fem,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  1.1 * fem),
                                              child: SizedBox(
                                                width: 18.9 * fem,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0.1 * fem,
                                                                  0 * fem),
                                                          child: Text(
                                                            '9',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Roboto Condensed',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize:
                                                                  0.9 * fem,
                                                              color: Color(
                                                                  0xFFFFFFFF),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0 * fem),
                                                          child: Text(
                                                            ':',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Roboto Condensed',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize:
                                                                  0.9 * fem,
                                                              color: Color(
                                                                  0xFFFFFFFF),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          '41',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Roboto Condensed',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 0.9 * fem,
                                                            color: Color(
                                                                0xFFFFFFFF),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.2 * fem,
                                                              0 * fem,
                                                              0.1 * fem),
                                                      child: SizedBox(
                                                        width: 4.7 * fem,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0.1 * fem,
                                                                      0.7 * fem,
                                                                      0.1 *
                                                                          fem),
                                                              child: SizedBox(
                                                                width:
                                                                    1.1 * fem,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0.4 *
                                                                              fem,
                                                                          0.1 *
                                                                              fem,
                                                                          0 * fem),
                                                                      child:
                                                                          SizedBox(
                                                                        width: 0.2 *
                                                                            fem,
                                                                        height: 0.3 *
                                                                            fem,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/bar_14_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0.3 *
                                                                              fem,
                                                                          0.1 *
                                                                              fem,
                                                                          0 * fem),
                                                                      child:
                                                                          SizedBox(
                                                                        width: 0.2 *
                                                                            fem,
                                                                        height: 0.4 *
                                                                            fem,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/bar_24_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0.1 *
                                                                              fem,
                                                                          0.1 *
                                                                              fem,
                                                                          0 * fem),
                                                                      child:
                                                                          SizedBox(
                                                                        width: 0.2 *
                                                                            fem,
                                                                        height: 0.5 *
                                                                            fem,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/bar_33_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 0.2 *
                                                                          fem,
                                                                      height:
                                                                          0.6 *
                                                                              fem,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/vectors/bar_4_x2.svg',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0.3 * fem,
                                                                      0.7 * fem,
                                                                      0 * fem),
                                                              child: SizedBox(
                                                                width: 1 * fem,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem),
                                                                      child:
                                                                          SizedBox(
                                                                        width: 0.6 *
                                                                            fem,
                                                                        height: 0.3 *
                                                                            fem,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/container_8_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0.2 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          0.2 *
                                                                              fem,
                                                                          0 * fem),
                                                                      child:
                                                                          SizedBox(
                                                                        width: 0.3 *
                                                                            fem,
                                                                        height: 0.2 *
                                                                            fem,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/bar_13_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 1.5 * fem,
                                                              child: Stack(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 1.5 *
                                                                        fem,
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          margin: EdgeInsets.fromLTRB(
                                                                              0 * fem,
                                                                              0 * fem,
                                                                              0.1 * fem,
                                                                              0 * fem),
                                                                          child:
                                                                              Opacity(
                                                                            opacity:
                                                                                0.4,
                                                                            child:
                                                                                SizedBox(
                                                                              width: 1.3 * fem,
                                                                              height: 0.8 * fem,
                                                                              child: SvgPicture.asset(
                                                                                'assets/vectors/border_x2.svg',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          margin: EdgeInsets.fromLTRB(
                                                                              0 * fem,
                                                                              0.3 * fem,
                                                                              0 * fem,
                                                                              0.3 * fem),
                                                                          child:
                                                                              Opacity(
                                                                            opacity:
                                                                                0.4,
                                                                            child:
                                                                                SizedBox(
                                                                              width: 0.1 * fem,
                                                                              height: 0.3 * fem,
                                                                              child: SvgPicture.asset(
                                                                                'assets/vectors/cap_x2.svg',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Positioned(
                                                                    left: 0.1 *
                                                                        fem,
                                                                    bottom:
                                                                        0.1 *
                                                                            fem,
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFFFFFFF),
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.1 *
                                                                                fem),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: 1.1 *
                                                                            fem,
                                                                        height: 0.5 *
                                                                            fem,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 18.9 * fem,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ClipRect(
                                                    child: BackdropFilter(
                                                      filter: ImageFilter.blur(
                                                        sigmaX: 2,
                                                        sigmaY: 2,
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x1AF1F5F9),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.5 *
                                                                          fem),
                                                        ),
                                                        child: Container(
                                                          width: 2.3 * fem,
                                                          height: 2.3 * fem,
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0.6 * fem,
                                                                  0.7 * fem,
                                                                  0.6 * fem,
                                                                  0.7 * fem),
                                                          child: Container(
                                                            width: 1.5 * fem,
                                                            height: 1.5 * fem,
                                                            child: SizedBox(
                                                              width: 0.9 * fem,
                                                              height: 1 * fem,
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/vectors/vector_10_x2.svg',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.6 * fem,
                                                        0 * fem,
                                                        0.6 * fem),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 0.9 * fem,
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'Welcome Back',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize:
                                                                  0.9 * fem,
                                                              height: 0.1 * fem,
                                                              color: Color(
                                                                  0xB2FFFFFF),
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: ', ',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize:
                                                                  0.9 * fem,
                                                              height: 0.1 * fem,
                                                              color: Color(
                                                                  0xB2FFFFFF),
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: 'Nivo!',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize:
                                                                  0.9 * fem,
                                                              height: 0.1 * fem,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  ClipRect(
                                                    child: BackdropFilter(
                                                      filter: ImageFilter.blur(
                                                        sigmaX: 2,
                                                        sigmaY: 2,
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x1AF1F5F9),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.5 *
                                                                          fem),
                                                        ),
                                                        child: SizedBox(
                                                          width: 2.3 * fem,
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    0.9 * fem,
                                                                    0.8 * fem,
                                                                    0.9 * fem,
                                                                    0.5 * fem),
                                                            child: Stack(
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                SizedBox(
                                                                  width:
                                                                      1.5 * fem,
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(
                                                                            0.2 *
                                                                                fem,
                                                                            0 *
                                                                                fem,
                                                                            0.1 *
                                                                                fem,
                                                                            0.6 *
                                                                                fem),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              0.1 * fem,
                                                                          height:
                                                                              0.2 * fem,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/vectors/container_3_x2.svg',
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width: 0.4 *
                                                                            fem,
                                                                        height: 0.2 *
                                                                            fem,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/vector_2_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  right: -0.4 *
                                                                      fem,
                                                                  top: -0.4 *
                                                                      fem,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFF15F56),
                                                                      borderRadius:
                                                                          BorderRadius.circular(0.2 *
                                                                              fem),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width: 0.4 *
                                                                          fem,
                                                                      height:
                                                                          0.4 *
                                                                              fem,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0.9 * fem),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 0.4 * fem),
                                            child: Text(
                                              'Your Balance',
                                              style: GoogleFonts.getFont(
                                                'Montserrat',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 0.9 * fem,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '\$8,353.11',
                                            style: GoogleFonts.getFont(
                                              'Montserrat',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 2 * fem,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRect(
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 1.8999999762,
                                              sigmaY: 1.8999999762,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x1CFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(1 * fem),
                                                  topRight:
                                                      Radius.circular(1 * fem),
                                                  bottomRight: Radius.circular(
                                                      0.8 * fem),
                                                  bottomLeft: Radius.circular(
                                                      0.8 * fem),
                                                ),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.5 * fem,
                                                    0.5 * fem,
                                                    0.5 * fem,
                                                    0.5 * fem),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0.4 * fem),
                                                      child: ClipRect(
                                                        child: BackdropFilter(
                                                          filter:
                                                              ImageFilter.blur(
                                                            sigmaX: 2,
                                                            sigmaY: 2,
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x1AF1F5F9),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.5 *
                                                                              fem),
                                                            ),
                                                            child: Container(
                                                              width: 2.9 * fem,
                                                              height: 2.3 * fem,
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      0.9 * fem,
                                                                      0.5 * fem,
                                                                      0.9 * fem,
                                                                      0.5 *
                                                                          fem),
                                                              child: Container(
                                                                width:
                                                                    1.5 * fem,
                                                                height:
                                                                    1.5 * fem,
                                                                child: SizedBox(
                                                                  width:
                                                                      1.2 * fem,
                                                                  height:
                                                                      1.2 * fem,
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/vectors/vector_9_x2.svg',
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0.6 * fem,
                                                              0 * fem,
                                                              0.6 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Send',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 0.6 * fem,
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ClipRect(
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 1.8999999762,
                                              sigmaY: 1.8999999762,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x1CFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(1 * fem),
                                                  topRight:
                                                      Radius.circular(1 * fem),
                                                  bottomRight: Radius.circular(
                                                      0.8 * fem),
                                                  bottomLeft: Radius.circular(
                                                      0.8 * fem),
                                                ),
                                              ),
                                              child: SizedBox(
                                                width: 3.9 * fem,
                                                child: Container(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0.5 * fem,
                                                      0.5 * fem,
                                                      0.5 * fem,
                                                      0.5 * fem),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0.4 * fem),
                                                        child: ClipRect(
                                                          child: BackdropFilter(
                                                            filter: ImageFilter
                                                                .blur(
                                                              sigmaX: 2,
                                                              sigmaY: 2,
                                                            ),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x1AF1F5F9),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(0.5 *
                                                                            fem),
                                                              ),
                                                              child: Container(
                                                                width:
                                                                    2.9 * fem,
                                                                padding: EdgeInsets
                                                                    .fromLTRB(
                                                                        0.8 *
                                                                            fem,
                                                                        0.6 *
                                                                            fem,
                                                                        0.8 *
                                                                            fem,
                                                                        0.9 *
                                                                            fem),
                                                                child: SizedBox(
                                                                  width:
                                                                      1.5 * fem,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(
                                                                            0 *
                                                                                fem,
                                                                            0 *
                                                                                fem,
                                                                            0.2 *
                                                                                fem,
                                                                            0.6 *
                                                                                fem),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              0.8 * fem,
                                                                          height:
                                                                              0.2 * fem,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/vectors/vector_17_x2.svg',
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        margin: EdgeInsets.fromLTRB(
                                                                            0 *
                                                                                fem,
                                                                            0.5 *
                                                                                fem,
                                                                            0 * fem,
                                                                            0 * fem),
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              0.3 * fem,
                                                                          height:
                                                                              0.3 * fem,
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/vectors/container_x2.svg',
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Pay',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Montserrat',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 0.6 * fem,
                                                            color: Color(
                                                                0xFFFFFFFF),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ClipRect(
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 1.8999999762,
                                              sigmaY: 1.8999999762,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x1CFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(1 * fem),
                                                  topRight:
                                                      Radius.circular(1 * fem),
                                                  bottomRight: Radius.circular(
                                                      0.8 * fem),
                                                  bottomLeft: Radius.circular(
                                                      0.8 * fem),
                                                ),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.5 * fem,
                                                    0.5 * fem,
                                                    0.5 * fem,
                                                    0.5 * fem),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0.4 * fem),
                                                      child: ClipRect(
                                                        child: BackdropFilter(
                                                          filter:
                                                              ImageFilter.blur(
                                                            sigmaX: 2,
                                                            sigmaY: 2,
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x1AF1F5F9),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.5 *
                                                                              fem),
                                                            ),
                                                            child: Container(
                                                              width: 2.9 * fem,
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      0.8 * fem,
                                                                      0.8 * fem,
                                                                      1 * fem,
                                                                      0.6 *
                                                                          fem),
                                                              child: SizedBox(
                                                                width:
                                                                    1.5 * fem,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          0.1 *
                                                                              fem),
                                                                      child:
                                                                          SizedBox(
                                                                        width: 1.1 *
                                                                            fem,
                                                                        height: 0.3 *
                                                                            fem,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/vectors/vector_21_x2.svg',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 1.1 *
                                                                          fem,
                                                                      height:
                                                                          0.5 *
                                                                              fem,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/vectors/container_6_x2.svg',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0.6 * fem,
                                                              0 * fem,
                                                              0.6 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'cards',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 0.6 * fem,
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ClipRect(
                                          child: BackdropFilter(
                                            filter: ImageFilter.blur(
                                              sigmaX: 1.8999999762,
                                              sigmaY: 1.8999999762,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x1CFFFFFF),
                                                borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(1 * fem),
                                                  topRight:
                                                      Radius.circular(1 * fem),
                                                  bottomRight: Radius.circular(
                                                      0.8 * fem),
                                                  bottomLeft: Radius.circular(
                                                      0.8 * fem),
                                                ),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.5 * fem,
                                                    0.5 * fem,
                                                    0.5 * fem,
                                                    0.5 * fem),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0.4 * fem),
                                                      child: ClipRect(
                                                        child: BackdropFilter(
                                                          filter:
                                                              ImageFilter.blur(
                                                            sigmaX: 2,
                                                            sigmaY: 2,
                                                          ),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x1AF1F5F9),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.5 *
                                                                              fem),
                                                            ),
                                                            child: Container(
                                                              width: 2.9 * fem,
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      0.8 * fem,
                                                                      0.5 * fem,
                                                                      0.8 * fem,
                                                                      0.5 *
                                                                          fem),
                                                              child: SizedBox(
                                                                width:
                                                                    1.5 * fem,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          0.2 *
                                                                              fem),
                                                                      child:
                                                                          SizedBox(
                                                                        width: 1.3 *
                                                                            fem,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0.2 * fem, 0 * fem),
                                                                              child: SizedBox(
                                                                                width: 0.5 * fem,
                                                                                height: 0.5 * fem,
                                                                                child: SvgPicture.asset(
                                                                                  'assets/vectors/vector_23_x2.svg',
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 0.5 * fem,
                                                                              height: 0.5 * fem,
                                                                              child: SvgPicture.asset(
                                                                                'assets/vectors/vector_18_x2.svg',
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 1.3 *
                                                                          fem,
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            margin: EdgeInsets.fromLTRB(
                                                                                0 * fem,
                                                                                0 * fem,
                                                                                0.2 * fem,
                                                                                0 * fem),
                                                                            child:
                                                                                SizedBox(
                                                                              width: 0.5 * fem,
                                                                              height: 0.5 * fem,
                                                                              child: SvgPicture.asset(
                                                                                'assets/vectors/vector_1_x2.svg',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                0.5 * fem,
                                                                            height:
                                                                                0.5 * fem,
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              'assets/vectors/vector_16_x2.svg',
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0.6 * fem,
                                                              0 * fem,
                                                              0.7 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'More',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 0.6 * fem,
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                1.5 * fem, 0 * fem, 1.5 * fem, 1.5 * fem),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 1.1 * fem),
                                  child: SizedBox(
                                    width: 20.4 * fem,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0.8 * fem, 0 * fem),
                                          child: SizedBox(
                                            width: 8 * fem,
                                            child: Text(
                                              'Send Money',
                                              style: GoogleFonts.getFont(
                                                'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 1.3 * fem,
                                                color: Color(0xFF000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.2 * fem, 0 * fem, 0.2 * fem),
                                          child: Text(
                                            'More',
                                            style: GoogleFonts.getFont(
                                              'Montserrat',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 0.9 * fem,
                                              color: Color(0xFF3B38EB),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: SizedBox(
                                    width: 20.4 * fem,
                                    child: Stack(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  1.3 * fem,
                                                  0 * fem),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0.2 * fem,
                                                        0 * fem,
                                                        0.2 * fem,
                                                        0.5 * fem),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF1F5F9),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    0.9 * fem),
                                                      ),
                                                      child: Container(
                                                        width: 3.4 * fem,
                                                        height: 3.4 * fem,
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                1.1 * fem,
                                                                1 * fem,
                                                                1.1 * fem,
                                                                1 * fem),
                                                        child: SizedBox(
                                                          width: 1.2 * fem,
                                                          height: 1.4 * fem,
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/vectors/group_x2.svg',
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'New Send',
                                                    style: GoogleFonts.getFont(
                                                      'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 0.8 * fem,
                                                      color: Color(0xFF292D32),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  1.3 * fem,
                                                  0 * fem),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0.5 * fem),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xFFFFFFFF)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.9 * fem),
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/images/profile_picture_1.jpeg',
                                                        ),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              Color(0xFFF1F5F9),
                                                          offset: Offset(
                                                              0 * fem, 0 * fem),
                                                          blurRadius: 0,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Container(
                                                      width: 3.4 * fem,
                                                      height: 3.4 * fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0.5 * fem,
                                                        0 * fem,
                                                        0.5 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Setare',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 0.8 * fem,
                                                        color:
                                                            Color(0xFF292D32),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  1.3 * fem,
                                                  0 * fem),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0.5 * fem),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Color(
                                                              0xFFFFFFFF)),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.9 * fem),
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/images/profile_picture_4.jpeg',
                                                        ),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              Color(0xFFF1F5F9),
                                                          offset: Offset(
                                                              0 * fem, 0 * fem),
                                                          blurRadius: 0,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Container(
                                                      width: 3.4 * fem,
                                                      height: 3.4 * fem,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0.9 * fem,
                                                        0 * fem,
                                                        0.9 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Alex',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 0.8 * fem,
                                                        color:
                                                            Color(0xFF292D32),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0.5 * fem),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xFFFFFFFF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.9 * fem),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/profile_picture.jpeg',
                                                      ),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0xFFF1F5F9),
                                                        offset: Offset(
                                                            0 * fem, 0 * fem),
                                                        blurRadius: 0,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Container(
                                                    width: 3.4 * fem,
                                                    height: 3.4 * fem,
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0.3 * fem,
                                                      0 * fem,
                                                      0.3 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Hamed',
                                                    style: GoogleFonts.getFont(
                                                      'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 0.8 * fem,
                                                      color: Color(0xFF292D32),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          right: 0 * fem,
                                          bottom: 0 * fem,
                                          child: SizedBox(
                                            width: 3.4 * fem,
                                            height: 4.9 * fem,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0.5 * fem),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xFFFFFFFF)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.9 * fem),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/profile_picture_2.jpeg',
                                                      ),
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0xFFF1F5F9),
                                                        offset: Offset(
                                                            0 * fem, 0 * fem),
                                                        blurRadius: 0,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Container(
                                                    width: 3.4 * fem,
                                                    height: 3.4 * fem,
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0.6 * fem,
                                                      0 * fem,
                                                      0.6 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Baran',
                                                    style: GoogleFonts.getFont(
                                                      'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 0.8 * fem,
                                                      color: Color(0xFF292D32),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFF8F8F8)),
                              borderRadius: BorderRadius.circular(2 * fem),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0D292D32),
                                  offset: Offset(0 * fem, -0.3 * fem),
                                  blurRadius: 25,
                                ),
                              ],
                            ),
                            child: SizedBox(
                              width: 23.4 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    1.4 * fem, 1.9 * fem, 1.4 * fem, 3.6 * fem),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 1.8 * fem),
                                      child: SizedBox(
                                        width: 20.4 * fem,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0.3 * fem,
                                                  0.8 * fem,
                                                  0.3 * fem),
                                              child: SizedBox(
                                                width: 4.6 * fem,
                                                child: Text(
                                                  'History',
                                                  style: GoogleFonts.getFont(
                                                    'Montserrat',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 1.3 * fem,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF1F5F9),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        0.5 * fem),
                                              ),
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.8 * fem,
                                                    0.5 * fem,
                                                    0.9 * fem,
                                                    0.5 * fem),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0.4 * fem,
                                                              0 * fem),
                                                      child: Text(
                                                        'Sort',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Montserrat',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 0.9 * fem,
                                                          color:
                                                              Color(0xFF3B38EB),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.3 * fem,
                                                              0 * fem,
                                                              0.2 * fem),
                                                      child: SizedBox(
                                                        width: 1.1 * fem,
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0.2 *
                                                                          fem),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF3B38EB),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      0.8 * fem,
                                                                  height:
                                                                      0 * fem,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0.2 *
                                                                          fem),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF3B38EB),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      0.8 * fem,
                                                                  height:
                                                                      0 * fem,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFF3B38EB),
                                                              ),
                                                              child: Container(
                                                                width:
                                                                    0.8 * fem,
                                                                height: 0 * fem,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.4 * fem,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1.5 * fem),
                                            child: SizedBox(
                                              width: 20.4 * fem,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0.8 * fem,
                                                                0 * fem),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xFFFFFFFF)),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.8 *
                                                                          fem),
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                              'assets/images/profile_picture_3.jpeg',
                                                            ),
                                                          ),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color(
                                                                  0xFFF1F5F9),
                                                              offset: Offset(
                                                                  0 * fem,
                                                                  0 * fem),
                                                              blurRadius: 0,
                                                            ),
                                                          ],
                                                        ),
                                                        child: Container(
                                                          width: 3.1 * fem,
                                                          height: 3.1 * fem,
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.4 * fem,
                                                                0 * fem,
                                                                0.4 * fem),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem),
                                                              child: Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Text(
                                                                  'Ali Sent',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Montserrat',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        1.1 *
                                                                            fem,
                                                                    color: Color(
                                                                        0xFF292D32),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Today, at 4:17pm',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Montserrat',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    0.8 * fem,
                                                                color: Color(
                                                                    0xFF9E9E9E),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.8 * fem,
                                                        0 * fem,
                                                        0.8 * fem),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x1A35C95A),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    0.4 * fem),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0.5 * fem,
                                                                0.3 * fem,
                                                                0.5 * fem,
                                                                0.3 * fem),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            text: '+ ',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize:
                                                                  0.9 * fem,
                                                              color: Color(
                                                                  0xFF35C95A),
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: '\$',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      0.9 * fem,
                                                                  height:
                                                                      0.1 * fem,
                                                                  color: Color(
                                                                      0xFF35C95A),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: '100',
                                                              ),
                                                              TextSpan(
                                                                text: '.00',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      0.9 * fem,
                                                                  height:
                                                                      0.1 * fem,
                                                                  color: Color(
                                                                      0x8035C95A),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 1.5 * fem),
                                            child: SizedBox(
                                              width: 20.4 * fem,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0.8 * fem,
                                                                0 * fem),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x1A7B61FF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.8 *
                                                                            fem),
                                                          ),
                                                          child: Container(
                                                            width: 3.1 * fem,
                                                            height: 3.1 * fem,
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    0.7 * fem,
                                                                    0.7 * fem,
                                                                    0.7 * fem,
                                                                    0.7 * fem),
                                                            child: SizedBox(
                                                              width: 1.8 * fem,
                                                              height: 1.8 * fem,
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/vectors/bag_tick_1_x2.svg',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.4 * fem,
                                                                0 * fem,
                                                                0.4 * fem),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem),
                                                              child: Text(
                                                                'Super Market',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      1.1 * fem,
                                                                  color: Color(
                                                                      0xFF292D32),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Text(
                                                                'Today, at 8:23am',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      0.8 * fem,
                                                                  color: Color(
                                                                      0xFF9E9E9E),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.8 * fem,
                                                        0 * fem,
                                                        0.8 * fem),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x1AFF3B30),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    0.4 * fem),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0.5 * fem,
                                                                0.3 * fem,
                                                                0.5 * fem,
                                                                0.3 * fem),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            text: '- ',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Montserrat',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize:
                                                                  0.9 * fem,
                                                              color: Color(
                                                                  0xFFFF3B30),
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: '\$',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      0.9 * fem,
                                                                  height:
                                                                      0.1 * fem,
                                                                  color: Color(
                                                                      0xFFFF3B30),
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: '36',
                                                              ),
                                                              TextSpan(
                                                                text: '.99',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      0.9 * fem,
                                                                  height:
                                                                      0.1 * fem,
                                                                  color: Color(
                                                                      0x80FF3B30),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20.4 * fem,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0.8 * fem,
                                                              0 * fem),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x1AFAC153),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.8 *
                                                                          fem),
                                                        ),
                                                        child: Container(
                                                          width: 3.1 * fem,
                                                          height: 3.1 * fem,
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0.8 * fem,
                                                                  0.8 * fem,
                                                                  0.8 * fem,
                                                                  0.8 * fem),
                                                          child: SizedBox(
                                                            width: 1.6 * fem,
                                                            height: 1.5 * fem,
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/vectors/vector_19_x2.svg',
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0.4 * fem,
                                                              0 * fem,
                                                              0.4 * fem),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              'Gas Station',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Montserrat',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    1.1 * fem,
                                                                color: Color(
                                                                    0xFF292D32),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0 * fem),
                                                            child: Text(
                                                              '2024 / 02 / 01, at 3:24pm',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Montserrat',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    0.8 * fem,
                                                                color: Color(
                                                                    0xFF9E9E9E),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0.8 * fem,
                                                      0 * fem,
                                                      0.8 * fem),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0x1AFF3B30),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.4 * fem),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0.5 * fem,
                                                              0.3 * fem,
                                                              0.5 * fem,
                                                              0.3 * fem),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          text: '- ',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Montserrat',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 0.9 * fem,
                                                            color: Color(
                                                                0xFFFF3B30),
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: '\$',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Montserrat',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    0.9 * fem,
                                                                height:
                                                                    0.1 * fem,
                                                                color: Color(
                                                                    0xFFFF3B30),
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: '12',
                                                            ),
                                                            TextSpan(
                                                              text: '.28',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Montserrat',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    0.9 * fem,
                                                                height:
                                                                    0.1 * fem,
                                                                color: Color(
                                                                    0x80FF3B30),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0 * fem,
                        child: SizedBox(
                          width: 23.4 * fem,
                          height: 9 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0.4 * fem, 0 * fem, 0 * fem),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.003, 1),
                                      end: Alignment(0.003, -2.962),
                                      colors: <Color>[
                                        Color(0xFFFFFFFF),
                                        Color(0x00FFFFFF)
                                      ],
                                      stops: <double>[0, 1],
                                    ),
                                  ),
                                  child: Container(
                                    width: 23.4 * fem,
                                    height: 6.6 * fem,
                                  ),
                                ),
                                Positioned(
                                  top: 0 * fem,
                                  child: Container(
                                    width: 23.4 * fem,
                                    height: 9 * fem,
                                    child: SizedBox(
                                      width: 20.4 * fem,
                                      height: 5 * fem,
                                      child: Stack(
                                        children: [
                                          SizedBox(
                                            width: 20.4 * fem,
                                            height: 5 * fem,
                                            child: SvgPicture.asset(
                                              'assets/vectors/background_1_x2.svg',
                                            ),
                                          ),
                                          Positioned(
                                            left: 2.5 * fem,
                                            child: SizedBox(
                                              width: 20.4 * fem,
                                              height: 2 * fem,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 5 * fem,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 1.5 * fem,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0.3 *
                                                                            fem),
                                                                width:
                                                                    1.5 * fem,
                                                                height:
                                                                    1.5 * fem,
                                                                child: SizedBox(
                                                                  width:
                                                                      1.5 * fem,
                                                                  height:
                                                                      1.5 * fem,
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/vectors/home_1_x2.svg',
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0.4 *
                                                                            fem,
                                                                        0 * fem,
                                                                        0.4 *
                                                                            fem,
                                                                        0 * fem),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFF3B38EB),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomRight:
                                                                        Radius.circular(6.3 *
                                                                            fem),
                                                                    bottomLeft:
                                                                        Radius.circular(6.3 *
                                                                            fem),
                                                                  ),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Color(
                                                                          0x3D3B38EB),
                                                                      offset: Offset(
                                                                          0 *
                                                                              fem,
                                                                          -0.8 *
                                                                              fem),
                                                                      blurRadius:
                                                                          8,
                                                                    ),
                                                                  ],
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      0.8 * fem,
                                                                  height:
                                                                      0.1 * fem,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0.2 * fem,
                                                                  0 * fem,
                                                                  0.2 * fem),
                                                          width: 1.5 * fem,
                                                          height: 2 * fem,
                                                          child: SizedBox(
                                                            width: 1.5 * fem,
                                                            height: 1.5 * fem,
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/vectors/vuesaxlinearcards_x2.svg',
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0.2 * fem,
                                                        0 * fem,
                                                        0.2 * fem),
                                                    child: SizedBox(
                                                      width: 5 * fem,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 1.5 * fem,
                                                            height: 2 * fem,
                                                            child: SizedBox(
                                                              width: 1.5 * fem,
                                                              height: 1.5 * fem,
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/vectors/chart_2_x2.svg',
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0.1 * fem,
                                                                    0 * fem,
                                                                    0.1 * fem),
                                                            child: SizedBox(
                                                              width: 1.5 * fem,
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0.1 *
                                                                            fem,
                                                                        0 * fem,
                                                                        0.2 *
                                                                            fem,
                                                                        0.1 *
                                                                            fem),
                                                                    child:
                                                                        SizedBox(
                                                                      width: 0.6 *
                                                                          fem,
                                                                      height:
                                                                          0.6 *
                                                                              fem,
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/vectors/vector_5_x2.svg',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 0.9 *
                                                                        fem,
                                                                    height:
                                                                        0.5 *
                                                                            fem,
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/vectors/vector_13_x2.svg',
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: -1.5 * fem,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        6.3 * fem),
                                                color: Color(0xFF3B38EB),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0x3D3B38EB),
                                                    offset: Offset(
                                                        0 * fem, 0.5 * fem),
                                                    blurRadius: 10,
                                                  ),
                                                ],
                                              ),
                                              child: Container(
                                                width: 3 * fem,
                                                height: 3 * fem,
                                                padding: EdgeInsets.fromLTRB(
                                                    0.8 * fem,
                                                    0.8 * fem,
                                                    0.8 * fem,
                                                    0.8 * fem),
                                                child: SizedBox(
                                                  width: 1.5 * fem,
                                                  height: 1.5 * fem,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/vuesaxlinearwallet_32_x2.svg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
