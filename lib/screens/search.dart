import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:skegee_map/constants.dart';
import 'package:provider/provider.dart';
import 'package:skegee_map/screens/building_search.dart';
import 'package:url_launcher/url_launcher.dart';

class Search extends StatefulWidget {
  static String id = 'search_screen';

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  BuildContext context;
  String selectedBuildingInfo = '';
  int _selectedIndex = 0;
  String currentImage = '';
  static const TextStyle optionStyle =
  TextStyle(fontSize: 31, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void changeText() {
    setState(() {
      print('Set State Called');
      selectedBuildingInfo = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      Scaffold(
        appBar: AppBar(
          title: Text('Building List'),
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            // Container(
            // (currentPosition != null)
            // height: MediaQuery.of(context).size.height / 3,
            // width: MediaQuery.of(context).size.width,
            // child: GoogleMap(
            // mapType: MapType.hybrid,
            // initialCameraPosition: CameraPosition(
            // target: LatLng(32.427183, -85.702267), zoom: 16),
            // ),
            // ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: kBuildings.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ExpansionTile(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            selectedBuildingInfo,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Image(
                          image: AssetImage(currentImage),
                        )
                      ],
                      title: Text(
                        kBuildings[index],
                      ),
                      leading: IconButton(
                        icon: Icon(Icons.info_outline_rounded),
                        onPressed: () {
                          setState(() {
                            switch (kBuildings[index]) {
                              case 'Abbott Stadium':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kAbbottInfo;
                                    currentImage = kAbbotImage;
                                  });
                                }
                                break;
                              case 'Brimmer':
                                {
                                  setState(() {
                                    currentImage = kBrimmerImage;
                                    selectedBuildingInfo = kBrimmerInfo;
                                  });
                                }
                                break;
                              case 'Armstrong Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kArmstrongInfo;
                                    currentImage = kArmstrongImage;
                                  });
                                }
                                break;
                              case 'Banneker Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kBannekerInfo;
                                    currentImage = kBannekerImage;
                                  });
                                }
                                break;
                              case 'Basil O Connor Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kBasilInfo;
                                    currentImage = kBasilImage;
                                  });
                                }
                                break;
                              case 'Bethune Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kBethuneInfo;
                                    currentImage = kBethuneImage;
                                  });
                                }
                                break;
                              case 'Bioethics':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kBioethicsInfo;
                                    currentImage = kBioethicsImage;
                                  });
                                }
                                break;
                              case 'Booker T. Washington Monument':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kBookerInfo;
                                    currentImage = kBookerMonumentImage;
                                  });
                                }
                                break;
                              case 'Campbell Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kCampbellInfo;
                                    currentImage = kCampbellImage;
                                  });
                                }
                                break;
                              case 'Carnegie Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kCarnegieInfo;
                                    currentImage = kCarnegieImage;
                                  });
                                }
                                break;
                              case 'Carver Foundation':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kCarverInfo;
                                    currentImage = kCarverFoundationImage;
                                  });
                                }
                                break;
                              case 'Centralized Laboratory Animal Research Facility':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kLargeAnimalInfo;
                                    currentImage = kAnimalLabCentralImage;
                                  });
                                }
                                break;
                              case 'Chambliss Business House':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kCHamblissInfo;
                                    currentImage = kChamblissImage;
                                  });
                                }
                                break;
                              case 'Chappie James Arena':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kCHamblissInfo;
                                    currentImage = kChappieJamesImage;
                                  });
                                }
                                break;
                              case 'Convenience Store':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kConvenienceStore;
                                    currentImage = kConvenienceImage;
                                  });
                                }
                                break;
                              case 'Douglass Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kDouglassInfo;
                                    currentImage = kDouglassImage;
                                  });
                                }
                                break;
                              case 'East Commons':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kEastCommons;
                                    currentImage = kEastCommonsImage;
                                  });
                                }
                                break;
                              case 'Emery I':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kEmeryOneInfo;
                                    currentImage = kEmery1Image;
                                  });
                                }
                                break;
                              case 'Emery II':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kEmeryTwoInfo;
                                    currentImage = kEmery2Image;
                                  });
                                }
                                break;
                              case 'Emery III':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kEmeryThreeInfo;
                                    currentImage = kEmery3Image;
                                  });
                                }
                                break;
                              case 'Emery IV':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kEmeryFourInfo;
                                    currentImage = kEmery4Image;
                                  });
                                }
                                break;
                              case 'Emery Recreation Building':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kEmeryRInfo;
                                    currentImage = kEmeryRecreationImage;
                                  });
                                }
                                break;
                              case 'Engineering Building':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kFosterInfo;
                                    currentImage = kFosterImage;
                                  });
                                }
                                break;
                              case 'Ford Library':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kFordLibrary;
                                    currentImage = kFordImage;
                                  });
                                }
                                break;
                              case 'George Washington Carver Museum':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kCarverInfo;
                                    currentImage = kCarverMuseumImage;
                                  });
                                }
                                break;
                              case 'Harper Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kHarperInfo;
                                    currentImage = kHarperImage;
                                  });
                                }
                                break;
                              case 'Harvey Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kHarveyInfo;
                                    currentImage = kHarveyImage;
                                  });
                                }
                                break;
                              case 'Henderson Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kHendersonInfo;
                                    currentImage = kHendersonImage;
                                  });
                                }
                                break;
                              case 'Housing':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kHousingInfo;
                                    currentImage = kHousingImage;
                                  });
                                }
                                break;
                              case 'Huntington Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kHuntingtonInfo;
                                    currentImage = kHuntingtonHallImage;
                                  });
                                }
                                break;
                              case 'James Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kJamesInfo;
                                    currentImage = kJamesHallImage;
                                  });
                                }
                                break;
                              case 'Kellogg Hotel and Conference Center':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kKelloggInfo;
                                    currentImage = kKelloggImage;
                                  });
                                }
                                break;
                              case 'Kresge Center':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kKresgeInfo;
                                    currentImage = kKresgeImage;
                                  });
                                }
                                break;
                              case 'Large Animal Clinic':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kLargeAnimalInfo;
                                    currentImage = kLargeAnimalImage;
                                  });
                                }
                                break;
                              case 'Lewis Adams Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kLewisInfo;
                                    currentImage = kLewisImage;
                                  });
                                }
                                break;
                              case 'Logan Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kLoganInfo;
                                    currentImage = kLoganImage;
                                  });
                                }
                                break;
                              case 'Marable Courts':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kMarableInfo;
                                    currentImage = kMarableCourtsImage;
                                  });
                                }
                                break;
                              case 'Margaret Murray Washington Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kMargaretInfo;
                                    currentImage = kMargaretMurrayImage;
                                  });
                                }
                                break;
                              case 'Milbank Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kMilBankInfo;
                                    currentImage = kMilBankInfo;
                                  });
                                }
                                break;
                              case 'Morrison Mayberry Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kMorrisInfo;
                                    currentImage = kMorrisonMayberryImage;
                                  });
                                }
                                break;
                              case 'North Commons':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kNorthCommonsInfo;
                                    currentImage = kNorthCommonsImage;
                                  });
                                }
                                break;
                              case 'Old Adminsitration Building':
                                {
                                  setState(() {
                                    selectedBuildingInfo =
                                        kOldAdministrationInfo;
                                    currentImage = kOldAdministrationImage;
                                  });
                                }
                                break;
                              case 'Olivia Davidson Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kOliviaDavidsonInfo;
                                    currentImage = kOliviaDavidsonImage;
                                  });
                                }
                                break;
                              case 'Patterson Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kPattersonInfo;
                                    currentImage = kPattersonHallImage;
                                  });
                                }
                                break;
                              case 'Physical Plant':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kPowerPlant;
                                    currentImage = kPowerPlantImage;
                                  });
                                }
                                break;
                              case 'Post Mortem Building':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kPostMortemBuilding;
                                    currentImage = kPostMortemImage;
                                  });
                                }
                                break;
                              case 'Power Plant':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kPowerPlant;
                                    currentImage = kPowerPlantImage;
                                  });
                                }
                                break;
                              case 'Robert Circle':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kRobertCircleInfo;
                                    currentImage = kRobertCircleImage;
                                  });
                                }
                                break;
                              case 'Robert R. Moton Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = k
                                    currentImage = kRobertMotonHallImage;
                                  });
                                }
                                break;
                              case 'Rockefeller Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kRockefellerHall;
                                    currentImage = kRockefellerHallImage;
                                  });
                                }
                                break;
                              case 'Rosenwald Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kRosenwaldBuilding;
                                    currentImage = kRosenwaldHallImage;
                                  });
                                }
                                break;
                              case 'ROTC':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kROTCBuilding;
                                    currentImage = kRotcImage;
                                  });
                                }
                                break;
                              case 'Russell Hall':
                               {
                                 setState(() {
                                   selectedBuildingInfo = kRussellHall;
                                   currentImage = kRussellHallImage;
                                 });
                               }
                                break;
                              case 'Russell Nursery':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kRussellNursery;
                                    currentImage = kRussellNurseryImage;
                                  });
                                }
                                break;
                              case 'Sage Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kSageHall;
                                    currentImage = kSageHallImage;
                                  });
                                }
                                break;
                              case 'Small Animal Clinic':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kSmallClinic;
                                    currentImage = kSmallAnimalClinicImage;
                                  });
                                }
                                break;
                              case 'Softball Field':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kSoftballFieldInfo;
                                    currentImage = kSoftballImage;
                                  });
                                }
                                break;
                              case 'Tantum Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kTantumHall;
                                        currentImage = kTantumImage;
                                  });
                                }
                                break;
                              case 'The Oaks':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kOaks;
                                        currentImage = kOaksImage;
                                  });
                                }
                                break;
                              case 'Thrasher Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kThrasherHall;
                                        currentImage = kThrasherImage;
                                  });
                                }
                                break;
                              case 'Tompkins Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kTompkins;
                                        currentImage = kTompkinsImage;
                                  });
                                }
                                break;
                              case 'Tuskegee Univ. Police Dept.':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kPoliceDepartmentInfo;
                                        currentImage = kPoliceImage;
                                  });
                                }
                                break;
                              case 'University Apartment':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kUniversityApartmentInfo;
                                        currentImage = kUniversityApartmentImage;
                                  });
                                }
                                break;
                              case 'University Chapel':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kChapelInfo;
                                    currentImage = kChapelImage;
                                  });
                                }
                                break;
                              case 'Washington Field':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWashingtonFieldInfo;
                                    currentImage = kWashingtonFieldImage;
                                  });
                                }
                                break;
                              case 'West Commons':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWest;
                                    currentImage = kWestCommonsImage;
                                  });
                                }
                                break;
                              case 'White Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWhite;
                                    currentImage = kWhiteImage;
                                  });
                                }
                                break;
                              case 'WIlcox A':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWilcoxA;
                                    currentImage = kWilcoxAImage;
                                  });
                                }
                                break;
                              case 'Wilcox B':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWilcoxBInfo;
                                    currentImage = kWilcoxBImage;
                                  });
                                }
                                break;
                              case 'Wilcox C':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWilcoxCInfo;
                                    currentImage = kWilcoxCImage;
                                  });
                                }
                                break;
                              case 'Wilcox D':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWilcoxDInfo;
                                    currentImage = kWilcoxDImage;
                                  });
                                }
                                break;
                              case 'Wilcox E':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kWilcoxEInfo;
                                    currentImage = kWilcoxEImage;
                                  });
                                }
                                break;
                              case 'William V. Chambliss House':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kCHamblissInfo;
                                    currentImage = kChamblissImage;
                                  });
                                }
                                break;
                              case 'Williams - Bowie Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kBowieInfo;
                                    currentImage = kBowieImage;
                                  });
                                }
                                break;
                              case 'Younge Hall':
                                {
                                  setState(() {
                                    selectedBuildingInfo = kYoungeInfo;
                                    currentImage = kYoungeImage;
                                  });
                                }
                                break;
                            }
                          });
                        },
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.directions),
                        onPressed: () {
                          print('Navigate pressed');
                          print(kBuildings[index]);
                          switch (kBuildings[index]) {
                            case 'Abbott Stadium':
                              {
                                print(kAbbott_url);
                                print(kAbbottInfo);
                              }
                              break;
                            case 'Brimmer':
                              {
                                // setState(() {
                                //   print('Set State Called');
                                //   selectedBuildingInfo = kBrimmerInfo;
                                //   // print(kBrimmer_url);
                                //   // print(kBrimmerInfo);
                                //   // launchURL(kBrimmer_url);
                                // });
                              }
                              break;
                            case 'Armstrong Hall':
                              {
                                print(kArmstrong_url);
                                print(kArmstrongInfo);
                                launchURL(kArmstrong_url);
                              }
                              break;
                            case 'Banneker Hall':
                              {
                                print(kBanneker_url);
                                print(kBannekerInfo);
                                launchURL(kBanneker_url);
                              }
                              break;
                            case 'Basil O Connor Hall':
                              {
                                launchURL(kBasil_url);
                              }
                              break;
                            case 'Bethune Hall':
                              {
                                launchURL(kBethune_url);
                              }
                              break;
                            case 'Bioethics':
                              {
                                launchURL(kBioethics_url);
                              }
                              break;
                            case 'Booker T. Washington Monument':
                              {
                                launchURL(kBooker_url);
                              }
                              break;
                            case 'Brimmer':
                              {
                                launchURL(kBrimmer_url);
                              }
                              break;
                            case 'Campbell Hall':
                              {
                                launchURL(kCampbell_url);
                              }
                              break;
                            case 'Carnegie Hall':
                              {
                                launchURL(kCarnegie_url);
                              }
                              break;
                            case 'Carver Foundation':
                              {
                                launchURL(kCarver_url);
                              }
                              break;
                            case 'Centralized Laboratory Animal Research Facility':
                              {
                                launchURL(kCentralized_url);
                              }
                              break;
                            case 'Chambliss Business House':
                              {
                                launchURL(kChambliss_url);
                              }
                              break;
                            case 'Chappie James Arena':
                              {
                                launchURL(kChappie_url);
                              }
                              break;
                            case 'Convenience Store':
                              {
                                launchURL(kConvenience_url);
                              }
                              break;
                            case 'Douglass Hall':
                              {
                                launchURL(kDouglass_url);
                              }
                              break;
                            case 'East Commons':
                              {
                                launchURL(kEast_url);
                              }
                              break;
                            case 'Emery I':
                              {
                                launchURL(kEmeryI_url);
                              }
                              break;
                            case 'Emery II':
                              {
                                launchURL(kEmeryII_url);
                              }
                              break;
                            case 'Emery III':
                              {
                                launchURL(kEmeryIII_url);
                              }
                              break;
                            case 'Emery IV':
                              {
                                launchURL(kEmeryIV_url);
                              }
                              break;
                            case 'Emery Recreation Building':
                              {
                                launchURL(kEmeryR_url);
                              }
                              break;
                            case 'Engineering Building':
                              {
                                launchURL(kEngineering_url);
                              }
                              break;
                            case 'Ford Library':
                              {
                                launchURL(kFord_url);
                              }
                              break;
                            case 'George Washington Carver Museum':
                              {
                                launchURL(kCarver_url);
                              }
                              break;
                            case 'Harper Hall':
                              {
                                launchURL(kHarper_url);
                              }
                              break;
                            case 'Harvey Hall':
                              {
                                launchURL(kHarvey_url);
                              }
                              break;
                            case 'Henderson Hall':
                              {
                                launchURL(kHenderson_url);
                              }
                              break;
                            case 'Housing':
                              {
                                launchURL(kHousing_url);
                              }
                              break;
                            case 'Huntington Hall':
                              {
                                launchURL(kHuntington_url);
                              }
                              break;
                            case 'James Hall':
                              {
                                launchURL(kHuntington_url);
                              }
                              break;
                            case 'Kellogg Hotel and Conference Center':
                              {
                                launchURL(kKellogg_url);
                              }
                              break;
                            case 'Kresge Center':
                              {
                                launchURL(kKresge_url);
                              }
                              break;
                            case 'Large Animal Clinic':
                              {
                                launchURL(kLargeAnimal_url);
                              }
                              break;
                            case 'Lewis Adams Hall':
                              {
                                launchURL(kLewis_url);
                              }
                              break;
                            case 'Logan Hall':
                              {
                                launchURL(kLogan_url);
                              }
                              break;
                            case 'Marable Courts':
                              {
                                launchURL(kMarable_url);
                              }
                              break;
                            case 'Margaret Murray Washington Hall':
                              {
                                launchURL(kMargaret_url);
                              }
                              break;
                            case 'Milbank Hall':
                              {
                                launchURL(kMilbank_url);
                              }
                              break;
                            case 'Morrison Mayberry Hall':
                              {
                                launchURL(kMorrison_url);
                              }
                              break;
                            case 'North Commons':
                              {
                                launchURL(kNorth_url);
                              }
                              break;
                            case 'Old Adminsitration Building':
                              {
                                launchURL(kOld_building_url);
                              }
                              break;
                            case 'Olivia Davidson Hall':
                              {
                                launchURL(kOlivia_url);
                              }
                              break;
                            case 'Patterson Hall':
                              {
                                launchURL(kFord_url);
                              }
                              break;
                            case 'Physical Plant':
                              {
                                launchURL(kPhysical_url);
                              }
                              break;
                            case 'Post Mortem Building':
                              {
                                launchURL(kPostMortem_url);
                              }
                              break;
                            case 'Power Plant':
                              {
                                launchURL(kPower_url);
                              }
                              break;
                            case 'Robert Circle':
                              {
                                launchURL(kRobertCircle_url);
                              }
                              break;
                            case 'Robert R. Moton Hall':
                              {
                                launchURL(kRobertR_url);
                              }
                              break;
                            case 'Rockefeller Hall':
                              {
                                launchURL(kRockefeller_url);
                              }
                              break;
                            case 'Rosenwald Hall':
                              {
                                launchURL(kRosenwald_url);
                              }
                              break;
                            case 'ROTC':
                              {
                                launchURL(kROTC_url);
                              }
                              break;
                            case 'Russell Hall':
                              {
                                launchURL(kRussell_url);
                              }
                              break;
                            case 'Russell Nursery':
                              {
                                launchURL(kRussellNursery_url);
                              }
                              break;
                            case 'Sage Hall':
                              {
                                launchURL(kSage_url);
                              }
                              break;
                            case 'Small Animal Clinic':
                              {
                                launchURL(kSmall_url);
                              }
                              break;
                            case 'Softball Field':
                              {
                                launchURL(kSoftball_url);
                              }
                              break;
                            case 'Tantum Hall':
                              {
                                launchURL(kTantum_url);
                              }
                              break;
                            case 'The Oaks':
                              {
                                launchURL(kOaks_url);
                              }
                              break;
                            case 'Thrasher Hall':
                              {
                                launchURL(kThrasher_url);
                              }
                              break;
                            case 'Tompkins Hall':
                              {
                                launchURL(kTompkins_url);
                              }
                              break;
                            case 'Tuskegee Univ. Police Dept.':
                              {
                                launchURL(kPolice_url);
                              }
                              break;
                            case 'University Apartment':
                              {
                                launchURL(kUniversityApartment_url);
                              }
                              break;
                            case 'University Chapel':
                              {
                                launchURL(kUniversityChapel_url);
                              }
                              break;
                            case 'Washington Field':
                              {
                                launchURL(kWashingtonField_url);
                              }
                              break;
                            case 'West Commons':
                              {
                                launchURL(kWest_url);
                              }
                              break;
                            case 'White Hall':
                              {
                                launchURL(kWhite_url);
                              }
                              break;
                            case 'WIlcox A':
                              {
                                launchURL(kWilcoxA_url);
                              }
                              break;
                            case 'Wilcox B':
                              {
                                launchURL(kWilcoxB_url);
                              }
                              break;
                            case 'Wilcox C':
                              {
                                launchURL(kWilcoxC_url);
                              }
                              break;
                            case 'Wilcox D':
                              {
                                launchURL(kWilcoxD_url);
                              }
                              break;
                            case 'Wilcox E':
                              {
                                launchURL(kWilcoxE_url);
                              }
                              break;
                            case 'William V. Chambliss House':
                              {
                                launchURL(kChambliss_url);
                              }
                              break;
                            case 'Williams - Bowie Hall':
                              {
                                launchURL(kWilliamsB_url);
                              }
                              break;
                            case 'Younge Hall':
                              {
                                launchURL(kYounge_url);
                              }
                              break;
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      // Text(
      //   'Index 1: Business',
      //   style: optionStyle,
      // ),
      Scaffold(
        appBar: AppBar(
          title: Text('Search Campus Buildings'),
          actions: [
            IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {
                  showSearch(context: context, delegate: BuildingSearch());
                })
          ],
        ),
        body: Text(
          '',
          style: optionStyle,
        ),
      ),
    ];
    final currentPosition = Provider.of<Position>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp), title: Text('List')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search'))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

//   @override
//   Search createState() => Search();
// }
// child: Row(
// mainAxisSize: MainAxisSize.max,
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// IconButton(
// icon: Icon(Icons.search_outlined),
// onPressed: () {
// // Navigator.pushNamed(context, )
// })
// ],
// ),
