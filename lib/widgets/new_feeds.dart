import 'package:facebook_ui/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_button.dart';
class NewFeeds extends StatelessWidget {
  const NewFeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [

                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none, children: [
                            Container(
                                margin: const EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(45)),
                                height: 70,
                                width: 70,
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://images.pexels.com/photos/9554064/pexels-photo-9554064.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                )),
                            Positioned(
                                right: -4,
                                bottom: 5,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(25)),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(flex: 3,
                          child: Text(
                            "What's in your mind? ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        // SizedBox(width: 20,),
                      CustomDivider(txt: "______",),
                        const Expanded(
                          child: SizedBox(
                            width: 12,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.photo_library),
                                iconSize: 30,
                                color: Colors.white,
                              ),
                              const Text(
                                "Photo",
                                style:
                                TextStyle(fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Divider(thickness: 1,color: Colors.black.withOpacity(0.8),),
                    const SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(children: [
                      CustomButton(iconData:FontAwesomeIcons.edit,label:"Text" ,iconColor:Colors.blue,padLeft:10,padRight:5,dividerStr:"___" ,),
                      CustomButton(iconData:FontAwesomeIcons.video,label:" Live Video" ,iconColor:Colors.red,padLeft:5,padRight:5,dividerStr:"___" ,),
                      CustomButton(iconData:Icons.location_on_rounded,label:"Location" ,iconColor:Colors.red,padLeft:0,padRight:0,dividerStr:"" ,),











                      ],),
                    ),
                    const Divider(thickness: 5,color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Container(margin: const EdgeInsets.only(bottom: 20),height: 150,child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 20,itemBuilder: (context,i){

                            return Stack(children: [
                              Container(margin: const EdgeInsets.only(left: 20),height: 150,width: 90,decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),color: i%2==0?Colors.yellow:Colors.blue[300],image: DecorationImage(image:i%2==0? const NetworkImage("https://images.pexels.com/photos/7843649/pexels-photo-7843649.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"):const NetworkImage("https://images.pexels.com/photos/556666/pexels-photo-556666.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),fit: BoxFit.fill)),),
                              Positioned( right: 5,bottom: 25,child: Text("Ahmed$i",style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                            ], );
                          }),),
                          Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: const [FaIcon(FontAwesomeIcons.bookOpen,color: Colors.white,),Text("    View All Stories",style: TextStyle(fontSize: 19,color: Colors.white),)],),decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.blue.withOpacity(0.4),),margin: const EdgeInsets.only(left: 30,right: 30,bottom: 25),width: double.infinity,height: 50,),

                        ],
                      ),
                    ),

                  ],
                ),
                const Divider(thickness: 10,color: Colors.black,),
      
      
              ],
            ),
            ListView.separated(separatorBuilder: (context,i){
              return const Divider(thickness: 5,color: Colors.black,);
            },primary:false,shrinkWrap: true,itemCount: 20,itemBuilder: (context,i){
              return Container(height: 450,width: 90,color: Colors.black.withOpacity(0.5),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10,top: 5,right: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(45)),
                        height: 70,
                        width: 70,
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/9554064/pexels-photo-9554064.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        )),

                    const Text("Ahmed El Sabahy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
      const Expanded(flex:2,child: SizedBox(width: 140,)),
                    const Expanded(child: FaIcon(FontAwesomeIcons.ellipsisH,color: Colors.white,))
                  ],
                ),
                Container(margin: const EdgeInsets.only(top: 10),width: double.infinity,height: 300,decoration: BoxDecoration(image: DecorationImage( alignment:Alignment.center,image: i%2==0?const NetworkImage("https://images.pexels.com/photos/1906818/pexels-photo-1906818.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",):const NetworkImage("https://images.pexels.com/photos/9885568/pexels-photo-9885568.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),fit: BoxFit.fill)),),

                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [likeButton(FontAwesomeIcons.thumbsUp),likeButton(FontAwesomeIcons.comment),likeButton(FontAwesomeIcons.share)],)
              ],),
              );
            }),
          ],
        ),
      );

  }

  Container likeButton(var iconData) => Container(margin: const EdgeInsets.only(top: 10,left: 5),alignment: Alignment.center,width: 100,height:40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.black),child: FaIcon(iconData,color: Colors.blue,),);
}
