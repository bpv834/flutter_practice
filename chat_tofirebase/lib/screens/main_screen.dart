import 'package:chat_tofirebase/config/palette.dart';
import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key? key}) : super(key: key);

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  bool isSignupScreen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
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
                            text: isSignupScreen ? ' to Yammy chat!' : ' back',
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
              height: isSignupScreen? 280: 200,
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
                              if (isSignupScreen)
                                Container(
                                  margin: EdgeInsets.only(top: 3),
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
                        //폼클래스를 사용하면 밸리데이션값들을 쉽게 받을 수 있음
                        child: Form(
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
                                    contentPadding: EdgeInsets.all(10)),
                              ),
                              SizedBox(
                                height: 20,
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
                                    hintText: 'User name',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Palette.textColor1,
                                    ),
                                    //텍스트 필드의 두깨를 조절 자주 사용됨
                                    contentPadding: EdgeInsets.all(10)),
                              ),
                              SizedBox(
                                height: 20,
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
                                    hintText: 'User name',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Palette.textColor1,
                                    ),
                                    //텍스트 필드의 두깨를 조절 자주 사용됨
                                    contentPadding: EdgeInsets.all(10)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (!isSignupScreen)
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Form(
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
                                    hintText: 'User name',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Palette.textColor1,
                                    ),
                                    //텍스트 필드의 두깨를 조절 자주 사용됨
                                    contentPadding: EdgeInsets.all(10)),
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
                                    hintText: 'User name',
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Palette.textColor1,
                                    ),
                                    //텍스트 필드의 두깨를 조절 자주 사용됨
                                    contentPadding: EdgeInsets.all(10)),
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
            duration: Duration(
              milliseconds: 300
            ),
            top: isSignupScreen? 450:370,
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
          //
          Positioned(
            top: MediaQuery.of(context).size.height - 125,
            //포지션위젯이 전체 가로스크린을 차지할 수 있도록 left, right에 0을 줌
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(isSignupScreen? 'or Signup with': 'or Signin with'),
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
    );
  }
}
