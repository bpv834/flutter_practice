import 'dart:html';

import 'package:chat_firebase/add_image/add_image.dart';
import 'package:chat_firebase/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import '../config/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

//user name같은 extra data는 클라우드에서 관리함
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  //인스턴스를 사용자 등록과 인증에 사용함
  final _authentication = FirebaseAuth.instance;

  //로그인 페이지인지 구분하는 키
  bool isSignupScreen = true;

  //로딩중 표시
  bool showSpinner = false;
  final _formkey = GlobalKey<FormState>();
  String userName = "";
  String userEmail = "";
  String userPassword = "";

  void _tryValidation() {
    //폼의 검증은 currentState!.validate() 수행하며 true, false를 리턴
    final isValid = _formkey.currentState!.validate();
    if (isValid) {
      //save 호출 시 폼 전체의 state 값읗 저장 후 텍스트폼필드의 onsaved메서드를 작동시킴
      _formkey.currentState!.save();
    }
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Dialog(
            backgroundColor: Colors.white,
            child:AddImage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      //로딩표시를 보여주기 위한 위젯
      body: ModalProgressHUD(
        //필수 속성
        inAsyncCall: showSpinner,
        child: GestureDetector(
          onTap: () {
            //위젯 터치하면 포커스가 해제됨
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: [
              //붉은배경을 위한것
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                //붉은 배경 컨테이너
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/red.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 90, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //텍스트스팬은 텍스트나 문단을 모아 구성할 수 있게 해주는 위젯
                        RichText(
                          text: TextSpan(
                            text: 'Welcome',
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 25,
                              color: Colors.white30,
                            ),
                            children: [
                              TextSpan(
                                text: isSignupScreen
                                    ? ' to Yammy chat!'
                                    : ' back',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 25,
                                  color: Colors.white30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          isSignupScreen
                              ? 'Signup To Continue'
                              : 'Signin to continue',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            color: Colors.white30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //하얀컨테이너와 텍스트폼 필드들을 위한 것
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
                top: 200,
                //하얀배경 컨테이너
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  padding: EdgeInsets.all(20),
                  height: isSignupScreen ? 280 : 200,
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  //boxshadow속성은 리스트를 가져야 함
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        //opacity 불투명
                        color: Colors.black.withOpacity(0),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                isSignupScreen = false;
                                setState(() {});
                              },
                              child: Column(
                                children: [
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: !isSignupScreen
                                          ? Palette.activeColor
                                          : Palette.textColor1,
                                    ),
                                  ),
                                  if (!isSignupScreen)
                                    Container(
                                      margin: EdgeInsets.only(top: 3),
                                      height: 2,
                                      width: 55,
                                      color: Colors.orange,
                                    ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSignupScreen = true;
                                  setState(() {});
                                });
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'SignUp',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: isSignupScreen
                                              ? Palette.activeColor
                                              : Palette.textColor1,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          showAlert(context);
                                        },
                                        child: Icon(
                                          Icons.image,
                                          color: isSignupScreen
                                              ? Colors.cyan
                                              : Colors.grey[300],
                                        ),
                                      ),
                                    ],
                                  ),
                                  if (isSignupScreen)
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 3, 38, 0),
                                      height: 2,
                                      width: 55,
                                      color: Colors.orange,
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                        if (isSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            //폼클래스를 사용하면 밸리데이션값들을 쉽게 받을 수 있음, 검증할 내용 전체를 Form필드로 감싼다
                            child: Form(
                              key: _formkey,
                              child: Column(
                                children: [
                                  //텍스트 필드를 사용하려면 컨트롤러가 필요함 주사위 앱만들때 했었음
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      //텍스트 필드 앞에 이미지부여
                                      prefixIcon: Icon(
                                        Icons.account_circle,
                                        color: Palette.iconColor,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Palette.textColor1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(35),
                                        ),
                                      ),
                                      //focus=눌렀을때 테두리 보여줄 테두리 그래서 위 아웃라인 코드와 같음 변화를 주고싶지 않아서
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Palette.textColor1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(35),
                                        ),
                                      ),
                                      hintText: 'User name',
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: Palette.textColor1,
                                      ),
                                      //텍스트 필드의 두깨를 조절 자주 사용됨
                                      contentPadding: EdgeInsets.all(10),
                                    ),
                                    //스테이트가 뒤엉켜 고유한 텍스트필드가 아님 따라서 key값을 부여해 고유하게 만들어줌
                                    key: ValueKey(1),
                                    //검증기능
                                    validator: (value) {
                                      if (value!.isEmpty || value.length < 4) {
                                        //에러시 출력 문구
                                        return 'Please enter at least 4 characters';
                                      }
                                      //널 반환은 통과
                                      return null;
                                    },
                                    //사용자가 입력한 밸류값을 저장
                                    onSaved: (value) {
                                      userName = value!;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        //텍스트 필드 앞에 이미지부여
                                        prefixIcon: Icon(
                                          Icons.account_circle,
                                          color: Palette.iconColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        //focus=눌렀을때 테두리 보여줄 테두리 그래서 위 아웃라인 코드와 같음 변화를 주고싶지 않아서
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Palette.textColor1,
                                        ),
                                        //텍스트 필드의 두깨를 조절 자주 사용됨
                                        contentPadding: EdgeInsets.all(10)),
                                    //스테이트가 뒤엉켜 고유한 텍스트필드가 아님 따라서 key값을 부여해 고유하게 만들어줌
                                    key: ValueKey(2),
                                    validator: (value) {
                                      if (value!.isEmpty ||
                                          !value.contains('@')) {
                                        return 'Please enter a valid email address';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      userEmail = value!;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                        //텍스트 필드 앞에 이미지부여
                                        prefixIcon: Icon(
                                          Icons.account_circle,
                                          color: Palette.iconColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        //focus=눌렀을때 테두리 보여줄 테두리 그래서 위 아웃라인 코드와 같음 변화를 주고싶지 않아서
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        hintText: 'PW',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Palette.textColor1,
                                        ),
                                        //텍스트 필드의 두깨를 조절 자주 사용됨
                                        contentPadding: EdgeInsets.all(10)),
                                    //스테이트가 뒤엉켜 고유한 텍스트필드가 아님 따라서 key값을 부여해 고유하게 만들어줌
                                    key: ValueKey(3),
                                    validator: (value) {
                                      if (value!.isEmpty || value.length < 6) {
                                        return 'Please enter at least 6 characters';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      userPassword = value!;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (!isSignupScreen)
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Form(
                              key: _formkey,
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        //텍스트 필드 앞에 이미지부여
                                        prefixIcon: Icon(
                                          Icons.account_circle,
                                          color: Palette.iconColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        //focus=눌렀을때 테두리 보여줄 테두리 그래서 위 아웃라인 코드와 같음 변화를 주고싶지 않아서
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Palette.textColor1,
                                        ),
                                        //텍스트 필드의 두깨를 조절 자주 사용됨
                                        contentPadding: EdgeInsets.all(10)),
                                    //스테이트가 뒤엉켜 고유한 텍스트필드가 아님 따라서 key값을 부여해 고유하게 만들어줌
                                    key: ValueKey(4),
                                    validator: (value) {
                                      if (value!.isEmpty || value.length < 4) {
                                        return 'Please enter at least 4 characters';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      userEmail = value!;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(
                                        //텍스트 필드 앞에 이미지부여
                                        prefixIcon: Icon(
                                          Icons.account_circle,
                                          color: Palette.iconColor,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        //focus=눌렀을때 테두리 보여줄 테두리 그래서 위 아웃라인 코드와 같음 변화를 주고싶지 않아서
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette.textColor1,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(35),
                                          ),
                                        ),
                                        hintText: 'PW',
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Palette.textColor1,
                                        ),
                                        //텍스트 필드의 두깨를 조절 자주 사용됨
                                        contentPadding: EdgeInsets.all(10)),
                                    //스테이트가 뒤엉켜 고유한 텍스트필드가 아님 따라서 key값을 부여해 고유하게 만들어줌
                                    key: ValueKey(5),
                                    validator: (value) {
                                      if (value!.isEmpty || value.length < 4) {
                                        return 'Please enter at least 6 characters';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      userPassword = value!;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
              //전송 버튼
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: isSignupScreen ? 450 : 370,
                right: 0,
                left: 0,
                //포지션으로 감싸면 시작부분부터 공간을 차지함 그래서 시작점부터의 타원이 만들어짐, 해결법은 center위젯으로 감싸줌
                child: Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      //circular 50일때 완전한 원 0에 수렴할수록 직사각형
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        if (isSignupScreen) {
                          _tryValidation();
                          try {
                            final newUser = await _authentication
                                .createUserWithEmailAndPassword(
                              email: userEmail,
                              password: userPassword,
                            );

                            //doc메서드로 사용자가 등록한 data를 전달할 것임
                            await FirebaseFirestore.instance
                                .collection('user') //생성할 컬렉션 명''
                                .doc(newUser.user!
                                    .uid) //FirebaseAuth.instance 객체 newUser
                                //doc.set메서드는 Future타입 반환 따라서 await객체, set으로 db컬렉션,필드 생성 생성,
                                .set({
                              'username': userName,
                              'email': userEmail,
                            });
                            if (newUser.user != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ChatScreen();
                                  },
                                ),
                              );
                            }
                            setState(() {
                              showSpinner = false;
                            });
                          } catch (e) {
                            print('$e에러다');
                            setState(() {
                              showSpinner = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Please check your email and password'),
                                backgroundColor: Colors.blue,
                              ),
                            );
                          }
                        }

                        if (!isSignupScreen) {
                          _tryValidation();

                          try {
                            final newUser = await _authentication
                                .signInWithEmailAndPassword(
                                    email: userEmail, password: userPassword);
                            if (newUser != null) {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) {
                              //       return ChatScreen();
                              //     },
                              //   ),
                              // );
                            }
                          } catch (e) {
                            setState(() {
                              showSpinner = false;
                            });
                            print("에러=$e");
                          }
                        }
                      },
                      child: Center(
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            //그라데이션 color속성을 리스트로 받는다
                            gradient: LinearGradient(
                              colors: [
                                Colors.orange,
                                Colors.red,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(30),
                            //박스 테두리 그림자 효과
                            boxShadow: [
                              //투명도 값이 0에 가까울수록 그림자가 더 투명해지고, 1에 가까울수록 그림자가 덜 투명하거나 더 어두워집니다.
                              BoxShadow(
                                //blurRadius : 그림자 효과를 흐리게 해줌, 0일 수록 그림자 선이 선명해짐
                                // spreadRadius : 그림자 효과의 반경, 설정 값이 높을 수록 넓어진다.
                                // offset : x,y의 offset값으로 x의 숫자가 커질수록 오른쪽으로, y의 숫자가 커질수록 아래로 이동하여 표시된다.
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //아래쪽 구글 로그인
              AnimatedPositioned(
                curve: Curves.fastOutSlowIn,
                duration: Duration(milliseconds: 500),
                top: isSignupScreen
                    ? MediaQuery.of(context).size.height - 125
                    : MediaQuery.of(context).size.height - 165,
                //포지션위젯이 전체 가로스크린을 차지할 수 있도록 left, right에 0을 줌
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(isSignupScreen ? 'or Signup with' : 'or Signin with'),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(155, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Palette.googleColor,
                      ),
                      icon: Icon(Icons.add),
                      label: Text('Google'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
