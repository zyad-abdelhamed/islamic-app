import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluuuuuuuuter/core/responsive.dart';
import 'package:fluuuuuuuuter/features/rtabel/controller/cubit/rtabel_cubit.dart';


class rtabel_page extends StatelessWidget {
  const rtabel_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => RtabelCubit(),
      child: BlocBuilder<RtabelCubit, RtabelState>(
        builder: (context, state) {
          final RtabelCubit controller = context.read<RtabelCubit>();
          return SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: OrientationBuilder(
                builder: (context, orientation) {
                  if (orientation == Orientation.landscape) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          height: context.hieght*1/8,
                          color: Colors.pink[100],
                          child: const Text(
                            'يومى ف رمضان',
                            style: TextStyle(
                              shadows: [
                                BoxShadow(
                                  blurRadius: 7,
                                  
                                )
                              ],
                              fontSize: 30
                            ),
                          ),
                        ),


                        Container(
                          height: context.hieght*1/3,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  color: Colors.greenAccent,
                                  child: const Center(child: Text('اليوم',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),)),
                                ),
                              ),
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black)),
                                    child: Column(
                                      children: [
                                        Expanded(flex: 1,
                                          child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black)),
                                              child: const Center(child: Text('الصلاة'))),
                                        ),
                                        Expanded(flex: 2,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    Expanded(flex: 1,
                                                      child: Container(
                                                          width: double.infinity,
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color:
                                                                      Colors.black)),
                                                          child: const Center(
                                                              child:
                                                                  Text('الفروض'))),
                                                    ),
                                                    Expanded(flex: 2,
                                                    
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black)),
                                                                child: const Center(child: Text('فجر'))
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                 
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black)),
                                                                child: const Center(child: Text('ظهر')),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                 
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black)),
                                                                child: const Center(child: Text('عصر')),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                 
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black)),
                                                                child:
                                                                    const Center(child: Text('مغرب')),
                                                              ),
                                                            ),
                                                             Expanded(
                                                              flex: 1,
                                                              child: Container(
                                                                
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black)),
                                                                child:
                                                                    const Center(child: Text('عشاء')),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    Expanded(flex: 1,
                                                      child: Container(
                                                          width: double.infinity,
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color:
                                                                      Colors.black)),
                                                          child: const Center(
                                                              child:
                                                                  Text('النوافل'))),
                                                    ),
                                                    Expanded(flex: 2,
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                        
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .black)),
                                                              child: const Column(
                                                                children: [
                                                                Expanded(flex: 1,
                                                                  child: Text('السنن')),
                                                                  Expanded(flex: 1,
                                                                    child: Text('رواتب')),
                                                                 
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                               
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .black)),
                                                              child: const Center(child: Text('الشروق', style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.bold))),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                               
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .black)),
                                                              child: const Center(child: Text('الضحى', style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.bold))),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: Container(
                                                              alignment: Alignment.center,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .black)),
                                                              child:
                                                                  Text('قيام الليل'),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    children: [
                                      Expanded(flex: 1,
                                        child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: const Center(child: Text('ألاذكار'))),
                                      ),
                                      Expanded(flex: 2,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child:
                                                    const Center(child: Text('الصباح')),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                            
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child:
                                                    const Center(child: Text('المساء')),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child: const Center(
                                                    child: Text(
                                                  'الاستغفار',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold),
                                                )),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child:  const Column(
                                                  children: [
                                                    Expanded(flex: 1,
                                                      child: Text('الصلاة')),
                                                    Expanded(flex: 1,
                                                      child: Text('على')),
                                                    Expanded(flex: 1,
                                                      child: Text('النبى')),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child: const Column(
                                                
                                                  children: [
                                                    Expanded(flex: 1,
                                                      child: Text('اذكار')),
                                                    Expanded(flex: 1,
                                                      child: Text('عامة')),
                                                    Expanded(flex: 1,
                                                      child: Text('ودعاء')),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)),
                                  child: Column(
                                    children: [
                                      Expanded(flex: 1,
                                        child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: const Center(child: Text('قران'))),
                                      ),
                                      Expanded(flex: 2,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                              alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child: const Column(
                                             
                                                  children: [
                                                Expanded(flex: 1,
                                                  child: Text('ورد ')),
                                                Expanded(flex: 1,
                                                  child: Text(' تلاوة')),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                            alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black)),
                                                child: const Column(
                                                  
                                                  children: [
                                                Expanded(flex: 1,
                                                  child: Text('ورد ')),
                                                Expanded(flex: 1,
                                                  child: Text(' تدبر')),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      /*  Container(height: context.hieght*1/4,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.center,
                                    color:Colors.greenAccent,
                                    child: const Text('اليوم',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30
                                    ),),
                                  )),
                        
                                  Expanded(flex: 5,
                                    child:Row(children:[ ...List.generate(controller.words.length, (index) =>
                                     Padding(
                                       padding: const EdgeInsets.only(right:3.0),
                                       child: Container(alignment: Alignment.center,
                                          
                                           child: Text('${controller.words[index]}',style: TextStyle(
                                            color: Colors.orange[900]
                                           ),),
                                                                             ),
                                       
                                     ),
                                  )])) 
                                         
                            ],
                          ),
                        ),*/
                        Expanded(
                          child: Row(children:[
                              Expanded(
                                  flex: 1,
                                  child: ListView.builder(
                                    itemCount: 30,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.only(bottom: 2),
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[300],
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text('${index + 1} رمضان',style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                        ),),
                                      );
                                    },
                                  )),
                              Expanded(
                                  flex: 16,
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 16,mainAxisSpacing: 4),
                                    itemCount: 16 * 30,
                                    itemBuilder: (context, index) {
                                      return Checkbox(activeColor: Colors.greenAccent,
                                        value: controller.cb_values?[index]??false,
                                        onChanged:(value) {
                                        controller. cb_values![index] = value??false ;
                                      controller.  savecheckboxvalue(index, value);
                                       controller.f();
                                        }, 
                                       
                                      );
                                    },
                                  ))]),
                        )
                      ],
                    );
                  }
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text('لإستخدام جدول رمضان يجب تفعيل التوجيه العرضي للموبايل.',style: TextStyle(
                      fontSize: 30,
                      color:  Color.fromARGB(255, 216, 189, 105),
                      shadows: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.brown
                        )
                      ]
                    ),)),
                  );
                },
              ),
            ),
          );
        },
      ),
    ));
  }
}
