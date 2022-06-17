import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentacar/Screens/Widgets/VehicleList.dart';
import 'package:rentacar/Screens/models/categrory_model.dart';

import 'package:rentacar/Themes/Theme.dart' as s;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  List<CatModel> catList = [];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    catList.add(CatModel("All", "assets/images/logos/all.png", 1));
    catList.add(CatModel("Suzuki", "assets/images/logos/suzuki.png", 1));
    catList.add(CatModel("Toyota", "assets/images/logos/toyota.png", 2));
    catList.add(CatModel("Hyundai", "assets/images/logos/hyundai.png", 3));
    catList.add(CatModel("KIA", "assets/images/logos/kia.png", 4));
    catList.add(CatModel("Honda", "assets/images/logos/honda.png", 5));
    catList.add(CatModel("Mitsubishi", "assets/images/logos/mitsubishi.png", 6));
    catList.add(CatModel("Audi", "assets/images/logos/audi.png", 7));
    catList.add(CatModel("Mazda", "assets/images/logos/mazda.png", 8));
    catList.add(CatModel("GMC", "assets/images/logos/gmc.png", 9));
    catList.add(CatModel("MG", "assets/images/logos/mg.png", 10));

    _tabController = TabController(length: 11, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(360, 690), minTextAdapt: true);

    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
        body: Container(
          padding:
              EdgeInsets.only(top: 50.h, left: 10.w, right: 10.w, bottom: 5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Choose ",
                    style: textTheme.headline3,
                  ),
                  Expanded(
                      child: Text(
                    "a Car",
                    style: textTheme.headline4
                  )),
                  InkWell(
                    onTap: (){
                       Get.changeTheme(Get.isDarkMode? s.Theme().lightTheme: s.Theme().dartTheme);

                    },
                    child: Icon(
                      Icons.search,
                      size: 24.h,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Brands",
                style: GoogleFonts.roboto(
                    textStyle: textTheme.headline6,
                    color: Colors.grey,
                    fontSize: 16.sp
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12.r,
                  ),
                  color: Colors.blue,
                ),
                indicatorColor: Colors.white,
                isScrollable: true,
                labelColor: Color(0xffe4e3e3),
                padding: EdgeInsets.only(right: 10,top: 10),
                unselectedLabelColor: Theme.of(context).hoverColor,
                controller: _tabController,
                tabs: catList
                    .map((e) => Tab(
                          icon: Image.asset(
                            "${e.iconPath}",
                            width: 40.w,
                            height: 35.h,
                          ),
                          child: Text("${e.iconName}"),
                        ))
                    .toList(),
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),
                  VehicleList(),

                ]),
              ),
            ],
          ),
        ));
  }
}
