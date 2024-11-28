import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluuuuuuuuter/features/supplications/supplications/controller/cubit/night_cubit.dart';

class Body_night extends StatelessWidget {
  const Body_night({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NightCubit, NightState>(
      builder: (context, state) {
        final NightCubit controller = context.read<NightCubit>();
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              body: ListView.builder(
            itemCount: controller.words.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "${controller.words[index]['word']}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          child: Center(
                              child: Text(
                            '${controller.words[index]['num']}',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(31, 134, 133, 133)),
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(31, 168, 166, 166),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                                        mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                    
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 190, 145, 10),
                        radius: 37,
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {
                              controller.mince(index);
                            },
                            child: Icon(
                              Icons.minimize_outlined,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 190, 145, 10),
                        radius: 37,
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {
                              controller.reset(index);
                            },
                            child: Icon(
                              Icons.loop,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              );
            },
            physics: BouncingScrollPhysics(),
          )),
        );
      },
    );
  }
}
