


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ieee/core/AppColor/appcolor.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Color1,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor1,
        title: Container(
          width: 71,
          height: 40,
          child: Image(image: AssetImage("assets/images/logoieee.png") , 
          fit: BoxFit.cover,)),
       centerTitle: true,),

       body: ListView(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("About US" , 
            style:GoogleFonts.roboto(
            textStyle: TextStyle(color: AppColor.SecColor ,
            fontSize: 20 , fontWeight: FontWeight.bold),)),
          ),
        ),

        Container(
        width: double.infinity,
        decoration: BoxDecoration(color: AppColor.Color2,
        boxShadow: [
        BoxShadow(color: Colors.grey.withOpacity(0.5), 
        offset: Offset(0, 1) , blurRadius: 10 , spreadRadius: 2)]),
        child: Padding(
          padding: const EdgeInsets.only(top: 19 , left: 28 , bottom: 19 , right: 10),
          child: Text(
            " A legacy of over 25 years positions IEEE Zagazig University Student Branch (ZSB) as one of the first and most impactful in Egypt. We extend our reach beyond Zagazig University, serving students nationwide through workshops, events, and initiatives that explore technology's influence on all aspects of life, from its latest applications to its intersection with business in our signature \"MUTEX\" event, the Delta region's largest gathering focused on technology and entrepreneurship. Our commitment goes beyond technical expertise, fostering well-rounded graduates through six managerial committees and three technical chapters, alongside the Women In Engineering (WIE) Affinity Group. This comprehensive approach creates a professional environment where students can cultivate essential skills like leadership, teamwork, and management, ensuring they're prepared for the demands of the modern workforce.",
          maxLines: null,
          overflow: TextOverflow.visible,
          style: GoogleFonts.roboto(textStyle:
          TextStyle(fontSize: 15 , fontWeight: FontWeight.w400)),),
        ),),


        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(height: 383,
          width: double.infinity,
          decoration: BoxDecoration(color: AppColor.Color2 , 
          borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Container(height: 167.53,
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Center(child: Image(image: AssetImage("assets/images/vision 1.png"))),),

            Text("Our Vision" ,
            style: GoogleFonts.roboto(textStyle: 
            TextStyle(fontSize: 18 , color: AppColor.SecColor , fontWeight: FontWeight.w600)),),

            Container(width: double.infinity,
            height: 133,
            child: Padding(
              padding: const EdgeInsets.all(21),
              child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitorLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitorLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc enim, porttitor",
          maxLines: null,
              overflow: TextOverflow.visible,
              style: GoogleFonts.roboto(textStyle: 
              TextStyle(fontSize: 15 , color: AppColor.Textcolor , 
               fontWeight: FontWeight.w400,
                        
                        )),),
            ),)
          ],),),

        )
        
       ],) ,);
  }
}