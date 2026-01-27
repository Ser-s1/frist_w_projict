import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/reregistration_secrin.dart';
import 'package:flutter_app/funcions/data_control.dart';

class HomeScreenLoged extends StatelessWidget{
  const HomeScreenLoged({super.key});
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    var screenHeight = MediaQuery.sizeOf(context).height;
    LoginScreen s = LoginScreen();

    List touristDestination = ["assets/sin.jpg","assets/Asir.png","assets/my_projict.webp","assets/qdyah.jpg","assets/drya.jpg","assets/jeda.jpg"];
    List Title = ["${s.name} يا هلا بك بينا","منتزه السودة (عسير)","العلا","منتزه القدية","الدرعية التاريخية","منطقة البلد بجدة"];
    List Paragraph = ["شكرا لانك سجلت في تطبيقنا و ان شاء الله تعجبك الرحلة"
    ,"هي قمة المملكة الشاهقة التي تعانق السحاب وتكسوها غابات العرعر الكثيفة طوال العام. تتميز بأجوائها الباردة ومنتزهاتها الطبيعية التي توفر إطلالات بانورامية ساحرة على جبال عسير."
    ,"متحف طبيعي مفتوح يجمع بين عظمة الجبال الرملية وكنوز الحضارات القديمة كمدائن صالح. وجهة عالمية تمزج بين هدوء الصحراء، الفنون المعاصرة، والرفاهية التي تحاكي عبق التاريخ."
    ,"عاصمة الترفيه والرياضة المستقبلية التي تُبنى وسط منحدرات جبال طويق المهيبة بالرياض. تعد بتقديم تجارب استثنائية عالمية من خلال مدن الألعاب، الملاعب الرياضية، والأنشطة الثقافية."
    ,"قلب المملكة النابض ومهد الدولة السعودية، حيث يتجلى حي الطريف بعمارته النجدية العريقة. تحولت اليوم لوجهة سياحية تجمع بين التراث العالمي وأرقى المطاعم والمقاهي في مطل البجيري."
    ,"روح جدة التاريخية التي تتميز برواشينها الخشبية الفريدة وأزقتها التي تفوح بعبق التراث البحري. تعد مركزاً ثقافياً حياً يعكس نمط الحياة الحجازية الأصيلة في بيوتها التاريخية المسجلة لدى اليونسكو."];
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/theam_box2.png'), 
              fit: BoxFit.cover, 
            ),
          ),
        ),
  title: Text("${s.name} مرحبا "),
  centerTitle: true,
),
       
 body:Container(
      width: screenWidth,
      height: screenHeight, 
      decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/theam4.jpg"),
        fit: BoxFit.cover, 
          ),
      ),
      child:Column(
      children: [
      Container(
      width: screenWidth*0.9,
      height: screenHeight*0.374, 
      child: Column(
        children: [
          Container(
          padding: EdgeInsets.only(top:12),
          margin: EdgeInsets.only(top: 5),
          width: screenWidth*0.7,
          height:screenHeight*0.07,
          decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("assets/theam_box2.png"),
                  fit: BoxFit.cover, 
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5,5),
                      blurRadius: 4,
                      
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
          child:Text("مرحبا بك في تطبيقنا\n",textAlign: TextAlign.center,selectionColor: Color.fromARGB(0, 81, 40, 2),textScaleFactor: 1.7,)
          ),
          Container(
         
          margin: EdgeInsets.only(top: 20),
          width: screenWidth*0.27,
          height:screenHeight*0.07,
          decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("assets/theam_box2.png"),
                  fit: BoxFit.cover, 
                  ),
                  boxShadow: [
                    BoxShadow(
                      
                      blurRadius: 10,
                      
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                  child:FilledButton(
                            onPressed: (
                              
                            ) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()), 
                              );
                            },
                            child: Icon(Icons.hail),
                          ),          
        )
        ],
      )
      ),
      Container(
        width: screenWidth,
        height: screenHeight*0.5,
        child:Padding(
            padding:const EdgeInsetsGeometry.all(20),
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(20),
            width: screenWidth * 0.8,
            height: screenHeight * 0.5,
            decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage("assets/theam_box2.png"),
                  fit: BoxFit.cover, 
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5,5),
                      blurRadius: 4,
                      
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [ 
            
            Container(
            width: screenWidth*0.9,
            height: screenHeight * 0.31,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft:Radius.circular(30)),
              ),
              child:Image.asset(
                "${touristDestination[index]}",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top:10),
              height: screenHeight * 0.05,
              decoration: BoxDecoration(
              ),
              child:Text("${Title[index]}")
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
            child:Text("${Paragraph[index]}",textAlign: TextAlign.center,textScaleFactor: 0.8)
            
            )
            ],
            ),
            
          );
            },
          
          ),
            
        
        )
        
      )
      ]
      )
      
      )
      );
  }
}