import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluuuuuuuuter/core/responsive.dart';
import 'package:fluuuuuuuuter/features/elec/controller/cubit/elec_rosary_controller.dart';
import 'package:fluuuuuuuuter/features/elec/controller/cubit/elec_rosary_states.dart';

// ignore: camel_case_types
class body_elec_rosary extends StatelessWidget {
  const body_elec_rosary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => elec_rosary_controller(),
      child: BlocBuilder<elec_rosary_controller, elec_rosary_states>(
          builder: (context, state) {
        final elec_rosary_controller controller =
            context.read<elec_rosary_controller>();
        return SafeArea(
          child: OrientationBuilder(

            builder:(context, orientation) {
              if (orientation != Orientation.landscape){
                return  Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width:context.width*(1/3 + 1/12),
                          height:context.hieght*1/5,
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              color: Colors.grey[50],
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(13),
                                  topRight: Radius.circular(13)),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 2,
                                    offset: Offset(5, 5),
                                    spreadRadius: 3,
                                    color: Color.fromARGB(255, 238, 232, 232))
                              ]),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 7, left: 55, right: 55, bottom: 10),
                                child: Divider(
                                  thickness: 5,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                'الريكوردات المميزه',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Expanded(
                                child: FutureBuilder(
                                  future: controller.init(),
                                  builder: (context, snapshot) =>
                                      ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return const Divider(
                                        thickness: 0.5,
                                        color: Colors.grey,
                                      );
                                    },
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: snapshot.data?.length ?? 0,
                                    reverse: true,
                                    itemBuilder: (context, index) {
                                      return Text(
                                        snapshot.data?[index].number.toString() ??
                                            '',
                                        textAlign: TextAlign.center,
                                      );
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        TweenAnimationBuilder(
                          tween: Tween(begin: 0.0, end: 1.1),
                          duration: const Duration(seconds: 1),
                          builder: (context, value, child) {
                            return Transform.scale(
                              scale: value,
                              child: const Directionality(
                                textDirection: TextDirection.ltr,
                                child: Text(
                                  '🖐️سجل ريكورداتك المميزه...هيا لتفعلها',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                    Column(
                      
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: context.width*2/3,
                          height: 80,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 70, 154, 75),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(18)),
                              border: Border.all(
                                  color: const Color.fromARGB(255, 216, 189, 105),
                                  width: 4)),
                          child: Text(
                            '${controller.counter}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                shadows: [
                                  Shadow(
                                    blurRadius: 17,
                                  )
                                ]),
                          ),
                        ),
                        const SizedBox(height: 5,),
                         Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         InkWell(
                          onTap: () => controller.reset(),
                          child: const Column(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 216, 189, 105),
                                radius: 10,
                              ),
                              Text(
                                'reset',
                                style: TextStyle(color: Colors.brown),
                              )
                            ],
                          ),
                        ),
                        MaterialButton(
                          onPressed: () => controller.increease(),
                          minWidth: context.width*(1/3 +1/12),
                          height: context.hieght*1/4.8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          color: const Color.fromARGB(255, 70, 154, 75),
                          child: const Text(
                            'press',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                shadows: [Shadow(blurRadius: 17)]),
                          ),
                        ),
                       
                      ],
                    ),
                      ],
                      
                    ),
                   
                    MaterialButton(
                      onPressed: () async {
                        controller.add(context);
                      },
                      color: Colors.green,
                      child: const Text(
                        'حفظ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                   
                  ],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: ConfettiWidget(
                    confettiController: controller.confettiController,
                    blastDirection: 270,
                    emissionFrequency: 0.7,
                    gravity: 1.0,
                    numberOfParticles: 30,
                    blastDirectionality: BlastDirectionality.explosive,
                    colors: const [
                      Colors.yellow,
                      Colors.greenAccent,
                      Colors.brown,
                      Colors.orangeAccent
                    ],
                  ),
                ),
              ],
            );
              }else{
                return
                const Center(child: Text('لا يمكن استخدام السبحة الالكترونية ف هذا الوضع',style: TextStyle(fontSize: 30,
                      color:  Color.fromARGB(255, 216, 189, 105),
                      shadows: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.brown
                        )
                      ]),));
              }
            },
          ),
        );
      }),
    );
  }
}
