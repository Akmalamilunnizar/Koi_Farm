import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koi_farm/auth/sign_up_page.dart';
import 'package:koi_farm/base/custom_loader.dart';
import 'package:koi_farm/base/show_custom_snackbar.dart';
import 'package:koi_farm/controllers/auth_controller.dart';
import 'package:koi_farm/controllers/user_controller.dart';
import 'package:koi_farm/routes/route_helper.dart';
import 'package:koi_farm/utils/colors.dart';
import 'package:koi_farm/utils/dimensions.dart';
import 'package:koi_farm/widgets/app_text_field.dart';
import 'package:koi_farm/widgets/big_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  void _login(AuthController authController) {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty) {
      showCustomSnackBar("Kolom email tidak boleh kosong",
          title: "Alamat Email");
    } else if (!GetUtils.isEmail(email)) {
      showCustomSnackBar("Ketik email yang valid", title: "Email tidak valid");
    } else if (password.isEmpty) {
      showCustomSnackBar("Kolom password tidak boleh kosong",
          title: "Password");
    } else if (password.length < 6) {
      showCustomSnackBar("Password tidak boleh kurang dari 6 huruf",
          title: "Password terlalu pendek");
    } else {
      authController.login(email, password).then((status) async {
        print("Status Object: $status");

        if (status == null) {
          showCustomSnackBar(
              "Login gagal: Respons API kosong atau tidak valid");
        } else {
          // Menggunakan status.isSuccess untuk memeriksa hasil login
          if (status.isSuccess) {
            print("Login berhasil, token: ${status.message}");
            Get.find<UserController>().getUserInfo();
            Get.toNamed(RouteHelper.getInitial());
          } else {
            print("Login gagal: ${status.message}");
            showCustomSnackBar(status.message ?? "Login gagal");
          }
        }
      }).catchError((error) {
        print("Terjadi error saat login: $error");
        showCustomSnackBar("Terjadi error saat login: $error");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<AuthController>(
        builder: (authController) {
          return !authController.isLoading
              ? SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      Container(
                        height:
                            200, // Set tinggi dalam satuan pixel, yaitu 50 cm (500 mm)
                        width: double.infinity, // Full lebar layar
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("assets/image/koilogin.png"),
                            fit: BoxFit.cover, // Mengisi seluruh area container
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      //welcome
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20), // Padding sama kanan-kiri
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'Welcome Back!',
                                    textAlign: TextAlign
                                        .center, // Rata kiri untuk teks judul
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                      height: 5), // Tambahkan jarak antar teks
                                  Text(
                                    'Pantau Kolam Koi Anda Dengan Mudah',
                                    textAlign: TextAlign
                                        .center, // Rata kiri untuk teks subjudul
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      SizedBox(
                        width: 340, // atur lebar sesuai keinginan
                        height: 50, // atur tinggi sesuai keinginan
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.grey,
                            ),
                            labelStyle: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15),
                      SizedBox(
                        width: 340, // set lebar menjadi 320
                        height: 50, // set tinggi menjadi 50
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            labelText: "Kata Sandi",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                            ),
                            labelStyle: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.grey),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      //tag line

                      SizedBox(height: 10),
                      //signin
                      Column(
                        // Menggunakan Column untuk mengatur tata letak vertikal
                        children: [
                          // SizedBox(height: 40), // Jarak vertikal 50px
                          GestureDetector(
                            onTap: () {
                              _login(
                                  authController); // Ganti dengan logika yang tepat untuk login
                            },
                            child: Center(
                              child: Container(
                                width: 340, // Panjang tombol
                                height: 50, // Tinggi tombol
                                decoration: BoxDecoration(
                                  color: Color(
                                      0xFF1A5319), // Warna latar belakang tombol
                                  borderRadius: BorderRadius.circular(
                                      10), // Sudut lengkung tombol
                                ),
                                child: Center(
                                  child: Text(
                                    "Masuk",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16, // Ukuran font teks
                                      color: Colors.white, // Warna teks
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign:
                                        TextAlign.center, // Rata tengah teks
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: Dimensions.screenHeight * 0.05,
                      ),
                    ],
                  ),
                )
              : CustomLoader();
        },
      ),
    );
  }
}
