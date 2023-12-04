import 'package:demo/extensions/responsive_extension.dart';
import 'package:demo/modelclass/model_class.dart';
import 'package:demo/provider/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Demo extends ConsumerWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Welcome>?> apiData = ref.watch(getpostProvider);
    return Scaffold(
        body: apiData.when(
      data: (data) => Column(
        children: [
          SizedBox(
            height: context.width(50),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: context.width(110),
              child: GridView.builder(
                itemCount: data!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 5,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: context.width(200),
                        height: context.width(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              context.width(3),
                            ),
                            color: Colors.grey),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: context.width(10),
                                  backgroundImage:
                                      NetworkImage(data[index].url),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      data[index].title,
                                    ),
                                    Row(
                                      children: [
                                        const Text('id :'),
                                        Text(
                                          data[index].id.toString(),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  radius: context.width(5),
                                  child:
                                      Image.network(data[index].thumbnailUrl),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
      error: (error, stackTrace) => const Center(
        child: Text('error'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    ));
  }
}
