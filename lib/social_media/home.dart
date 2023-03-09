import 'package:flutter/material.dart';


import 'package:social_media_application/social_media/app_service.dart';
import 'package:social_media_application/social_media/response_model.dart';

class SocialMediaApp extends StatefulWidget {
  const SocialMediaApp({super.key});

  @override
  State<SocialMediaApp> createState() => _SocialMediaAppState();
}

class _SocialMediaAppState extends State<SocialMediaApp> {
  List<ResponseModel> imageModel = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    callApi();
  }

  void callApi() async {
    imageModel = await AppService().getImages();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Social Media Application',
        ),
      ),
      body: ListView.builder(
          itemCount: imageModel.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        imageModel[index].category,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.menu,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(imageModel[index].image),
                  ),
                  // Container(
                  //   height: 250,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: const BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(15)),
                  //     // image: DecorationImage(
                  //     //   image: NetworkImage(
                  //     //     'https://wallpaperaccess.com/full/1376490.jpg',
                  //     //   ),
                  //     // ),
                  //   ),
                  //   // child: Image.network('https://wallpaperaccess.com/full/1376490.jpg'),
                  // ),
                  // Image.network('https://wallpaperaccess.com/full/1376490.jpg'),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.favorite),
                      Icon(Icons.comment),
                      Icon(Icons.share),
                      Spacer(),
                      Icon(Icons.bookmark),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
