import 'package:flutter/material.dart';
import 'package:skegee_map/constants.dart';

class BuildingSearch extends SearchDelegate {
  static String id = 'BuildingSearch';

  get building => kBuildings;
  String currentQueryInfo = '';
  String currentQueryImage = '';
  String currentQueryURL = '';

  // clear search
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      // TODO Add Ios Platform Switcher
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    print('The query is $query');
    return Flexible(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Text(
                    //'Brimmmer',
                    query,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                    image: AssetImage(currentQueryImage),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    currentQueryInfo,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Container(
                    child: Center(
                      child: Card(
                        child: IconButton(
                            icon: Icon(Icons.directions),
                            onPressed: () {
                              launchURL(currentQueryURL);
                            }),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                  )
                ],
              ),
            ),
          ),
          // Card
          //
          //   color: Colors.red,
          //   shape: StadiumBorder(),
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     child: Card(
          //       color: Colors.red,
          //       child: Center(
          //         child: Text(query.toLowerCase()),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? kRecentBuildings
        : kBuildings.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
          //query = kBuildings.where((p) => p.startsWith(query)) as String;
          query = suggestionList[0];
          switch (query) {
            case 'Abbott Stadium':
              currentQueryInfo = kAbbottInfo;
              currentQueryImage = kAbbotImage;
              currentQueryURL = kAbbott_url;
              break;
            case 'Brimmer':
              currentQueryURL = kBrimmer_url;
              currentQueryImage = kBrimmerImage;
              currentQueryInfo = kBrimmerInfo;
              break;
            case 'Armstrong Hall':
              currentQueryURL = kArmstrong_url;
              currentQueryImage = kArmstrongImage;
              currentQueryInfo = kArmstrongInfo;
              break;
            case 'Banneker Hall':
              currentQueryURL = kBanneker_url;
              currentQueryImage = kBannekerImage;
              currentQueryInfo = kBannekerInfo;
              break;
            case 'Basil O Connor Hall':
              currentQueryURL = kBasil_url;
              currentQueryImage = kBasilImage;
              currentQueryInfo = kBasilInfo;
              break;
            case 'Bethune Hall':
              currentQueryURL = kBethune_url;
              currentQueryImage = kBethuneImage;
              currentQueryInfo = kBethuneInfo;
              break;
            case 'Bioethics':
              currentQueryURL = kBioethics_url;
              currentQueryImage = kBioethicsImage;
              currentQueryInfo = kBioethicsInfo;
              break;
            case 'Booker T. Washington Monument':
              currentQueryURL = kBooker_url;
              currentQueryImage = kBookerMonumentImage;
              currentQueryInfo = kBookerInfo;
              break;
            case 'Brimmer':
              currentQueryURL = kBrimmer_url;
              currentQueryImage = kBrimmerImage;
              currentQueryInfo = kBrimmerInfo;
              break;
            case 'Campbell Hall':
              currentQueryURL = kCampbell_url;
              currentQueryImage = kCampbellImage;
              currentQueryInfo = kCampbellInfo;
              break;
            case 'Carnegie Hall':
              currentQueryURL = kCarnegie_url;
              currentQueryImage = kCarnegieImage;
              currentQueryInfo = kCarnegieInfo;
              break;
            case 'Carver Foundation':
              currentQueryURL = kCarver_url;
              currentQueryImage = kCarverFoundationImage;
              currentQueryInfo = kCarverInfo;
              break;
            case 'Centralized Laboratory Animal Research Facility':
              currentQueryURL = kCentralized_url;
              currentQueryImage = kAnimalLabCentralImage;
              currentQueryInfo = kCentralizedBuilding;
              break;
            case 'Chambliss Business House':
              currentQueryURL = kChambliss_url;
              currentQueryImage = kChamblissImage;
              currentQueryInfo = kCHamblissInfo;
              break;
            case 'Chappie James Arena':
              currentQueryURL = kChappie_url;
              currentQueryImage = kChappieJamesImage;
              currentQueryInfo = kChappieInfo;
              break;
            case 'Convenience Store':
              currentQueryURL = kConvenience_url;
              currentQueryImage = kConvenienceImage;
              currentQueryInfo = kConvenienceStore;
              break;
            case 'Douglass Hall':
              currentQueryURL = kDouglass_url;
              currentQueryImage = kDouglassImage;
              currentQueryInfo = kDouglassInfo;
              break;
            case 'East Commons':
              currentQueryURL = kEast_url;
              currentQueryImage = kEastCommonsImage;
              currentQueryInfo = kEastCommons;
              break;
            case 'Emery I':
              currentQueryURL = kEmeryI_url;
              currentQueryImage = kEmery1Image;
              currentQueryInfo = kEmeryOneInfo;
              break;
            case 'Emery II':
              currentQueryURL = kEmeryII_url;
              currentQueryImage = kEmery2Image;
              currentQueryInfo = kEmeryTwoInfo;
              break;
            case 'Emery III':
              currentQueryURL = kEmeryIII_url;
              currentQueryImage = kEmery3Image;
              currentQueryInfo = kEmeryThreeInfo;
              break;
            case 'Emery IV':
              currentQueryURL = kEmeryIV_url;
              currentQueryImage = kEmery4Image;
              currentQueryInfo = kEmeryFourInfo;
              break;
            case 'Emery Recreation Building':
              currentQueryURL = kEmeryR_url;
              currentQueryImage = kEmeryRecreationImage;
              currentQueryInfo = kEmeryRInfo;
              break;
            case 'Engineering Building':
              currentQueryURL = kEngineering_url;
              currentQueryImage = kFosterImage;
              currentQueryInfo = kFosterInfo;
              break;
            case 'Ford Library':
              currentQueryURL = kFord_url;
              currentQueryImage = kFordImage;
              currentQueryInfo = kFordLibrary;
              break;
            case 'George Washington Carver Museum':
              currentQueryURL = kCarver_url;
              currentQueryImage = kCarverMuseumImage;
              currentQueryInfo = kCarverMuseumInfo;
              break;
            case 'Harper Hall':
              currentQueryURL = kHarper_url;
              currentQueryImage = kHarperImage;
              currentQueryInfo = kHarperInfo;
              break;
            case 'Harvey Hall':
              currentQueryURL = kHarvey_url;
              currentQueryImage = kHarveyImage;
              currentQueryInfo = kHarveyInfo;
              break;
            case 'Henderson Hall':
              currentQueryURL = kHenderson_url;
              currentQueryImage = kHendersonImage;
              currentQueryInfo = kHendersonInfo;
              break;
            case 'Housing':
              currentQueryURL = kHousing_url;
              currentQueryImage = kHousingImage;
              currentQueryInfo = kHousingInfo;
              break;
            case 'Huntington Hall':
              currentQueryURL = kHuntington_url;
              currentQueryImage = kHuntingtonHallImage;
              currentQueryInfo = kHuntingtonInfo;
              break;
            case 'James Hall':
              currentQueryURL = kJames_url;
              currentQueryImage = kJamesHallImage;
              currentQueryInfo = kJamesInfo;
              break;
            case 'Kellogg Hotel and Conference Center':
              currentQueryURL = kKellogg_url;
              currentQueryImage = kKelloggImage;
              currentQueryInfo = kKelloggInfo;
              break;
            case 'Kresge Center':
              currentQueryURL = kKresge_url;
              currentQueryImage = kKresgeImage;
              currentQueryInfo = kKresgeInfo;
              break;
            case 'Large Animal Clinic':
              currentQueryURL = kLargeAnimal_url;
              currentQueryImage = kLargeAnimalImage;
              currentQueryInfo = kLargeAnimalInfo;
              break;
            case 'Lewis Adams Hall':
              currentQueryURL = kLewis_url;
              currentQueryImage = kLewisImage;
              currentQueryInfo = kLewisInfo;
              break;
            case 'Logan Hall':
              currentQueryURL = kLogan_url;
              currentQueryImage = kLoganImage;
              currentQueryInfo = kLoganInfo;
              break;
            case 'Marable Courts':
              currentQueryURL = kMarable_url;
              currentQueryImage = kMarableCourtsImage;
              currentQueryInfo = kMarableInfo;
              break;
            case 'Margaret Murray Washington Hall':
              currentQueryURL = kMargaret_url;
              currentQueryImage = kMargaretMurrayImage;
              currentQueryInfo = kMargaretInfo;
              break;
            case 'Milbank Hall':
              currentQueryURL = kMilbank_url;
              currentQueryImage = kMilbankImage;
              currentQueryInfo = kMilBankInfo;
              break;
            case 'Morrison Mayberry Hall':
              currentQueryURL = kMorrison_url;
              currentQueryImage = kMorrisonMayberryImage;
              currentQueryInfo = kMorrisInfo;
              break;
            case 'North Commons':
              currentQueryURL = kNorth_url;
              currentQueryImage = kNorthCommonsImage;
              currentQueryInfo = kNorthCommonsInfo;
              break;
            case 'Old Adminsitration Building':
              // currentQueryURL = kAd
              currentQueryImage = kOldAdministrationImage;
              currentQueryInfo = kOldAdministrationInfo;
              break;
            case 'Olivia Davidson Hall':
              currentQueryURL = kOlivia_url;
              currentQueryImage = kOliviaDavidsonImage;
              currentQueryInfo = kOliviaDavidsonInfo;
              break;
            case 'Patterson Hall':
              currentQueryURL = kPatterson_url;
              currentQueryImage = kPattersonHallImage;
              currentQueryInfo = kPattersonInfo;
              break;
            case 'Physical Plant':
              currentQueryURL = kPhysical_url;
              currentQueryImage = kPhysicalPlantImage;
              currentQueryInfo = kPhysicalBuilding;
              break;
            case 'Post Mortem Building':
              currentQueryURL = kPostMortem_url;
              currentQueryImage = kPostMortemImage;
              currentQueryInfo = kPostMortemBuilding;
              break;
            case 'Power Plant':
              currentQueryURL = kPower_url;
              currentQueryImage = kPowerPlantImage;
              currentQueryInfo = kPowerPlantInfo;
              break;
            case 'Robert Circle':
              currentQueryURL = kRobertCircle_url;
              currentQueryImage = kRobertCircleImage;
              currentQueryInfo = kRobertCircleInfo;
              break;
            case 'Robert R. Moton Hall':
              currentQueryURL = kRobertR_url;
              currentQueryImage = kRobertMotonHallImage;
              currentQueryInfo = kMotonHallInfo;
              break;
            case 'Rockefeller Hall':
              currentQueryURL = kRockefeller_url;
              currentQueryImage = kRockefellerHallImage;
              currentQueryInfo = kRockefellerHallInfo;
              break;
            case 'Rosenwald Hall':
              currentQueryURL = kRosenwald_url;
              currentQueryImage = kRosenwaldHallImage;
              currentQueryInfo = kRosenwaldBuildingInfo;
              break;
            case 'ROTC':
              currentQueryURL = kROTC_url;
              currentQueryImage = kROTC_url;
              currentQueryInfo = kROTCBuilding;
              break;
            case 'Russell Hall':
              currentQueryURL = kRussell_url;
              currentQueryImage = kRussellHallImage;
              currentQueryInfo = kRussellHallInfo;
              break;
            case 'Russell Nursery':
              currentQueryURL = kRussellNursery_url;
              currentQueryImage = kRussellNurseryImage;
              currentQueryInfo = kRussellNurseryInfo;
              break;
            case 'Sage Hall':
              currentQueryURL = kSage_url;
              currentQueryImage = kSageHallImage;
              currentQueryInfo = kSageHallInfo;
              break;
            case 'Small Animal Clinic':
              currentQueryURL = kSmall_url;
              currentQueryImage = kSmallAnimalClinicImage;
              currentQueryInfo = kSmallClinic;
              break;
            case 'Softball Field':
              currentQueryURL = kSoftball_url;
              currentQueryImage = kSoftballImage;
              currentQueryInfo = kSoftballFieldInfo;
              break;
            case 'Tantum Hall':
              currentQueryURL = kTantum_url;
              currentQueryImage = kTantumImage;
              currentQueryInfo = kTantumHallInfo;
              break;
            case 'Tennis Court':
              currentQueryURL = kTennis_url;
              currentQueryImage = kTennisImage;
              currentQueryInfo = kTennisCourt;
              break;
            case 'Oaks':
              currentQueryURL = kOaks_url;
              currentQueryImage = kOaksImage;
              currentQueryInfo = kOaksInfo;
              break;
            case 'Thrasher Hall':
              currentQueryURL = kThrasher_url;
              currentQueryImage = kThrasherImage;
              currentQueryInfo = kThrasherHallInfo;
              break;
            case 'Tompkins Hall':
              currentQueryURL = kTompkins_url;
              currentQueryImage = kTompkinsImage;
              currentQueryInfo = kTompkinsInfo;
              break;
            case 'Tuskegee Univ. Police Dept.':
              currentQueryURL = kPolice_url;
              currentQueryImage = kPoliceDeptImage;
              currentQueryInfo = kPoliceDepartmentInfo;
              break;
            case 'University Apartment':
              currentQueryURL = kUniversityApartment_url;
              currentQueryImage = kUniversityApartmentImage;
              currentQueryInfo = kUniversityApartmentInfo;
              break;
            case 'University Chapel':
              currentQueryURL = kUniversityChapel_url;
              currentQueryImage = kChapelImage;
              currentQueryInfo = kChappieInfo;
              break;
            case 'Washington Field':
              currentQueryURL = kWashingtonField_url;
              currentQueryImage = kWashingtonFieldImage;
              currentQueryInfo = kWashingtonFieldInfo;
              break;
            case 'West Commons':
              currentQueryURL = kWest_url;
              currentQueryImage = kWestCommonsImage;
              currentQueryInfo = kWest;
              break;
            case 'White Hall':
              currentQueryURL = kWhite_url;
              currentQueryImage = kWhiteImage;
              currentQueryInfo = kWhiteHallInfo;
              break;
            case 'WIlcox A':
              currentQueryURL = kWilcoxA_url;
              currentQueryImage = kWilcoxAImage;
              currentQueryInfo = kWilcoxA;
              break;
            case 'Wilcox B':
              currentQueryURL = kWilcoxB_url;
              currentQueryImage = kWilcoxBImage;
              currentQueryInfo = kWilcoxBInfo;
              break;
            case 'Wilcox C':
              currentQueryURL = kWilcoxC_url;
              currentQueryImage = kWilcoxCImage;
              currentQueryInfo = kWilcoxCInfo;
              break;
            case 'Wilcox D':
              currentQueryURL = kWilcoxD_url;
              currentQueryImage = kWilcoxDImage;
              currentQueryInfo = kWilcoxDInfo;
              break;
            case 'Wilcox E':
              currentQueryURL = kWilcoxE_url;
              currentQueryImage = kWilcoxEImage;
              currentQueryInfo = kWilcoxEInfo;
              break;
            case 'William V. Chambliss House':
              currentQueryURL = kChambliss_url;
              currentQueryImage = kChamblissImage;
              currentQueryInfo = kCHamblissInfo;
              break;
            case 'Williams - Bowie Hall':
              currentQueryURL = kWilliamsB_url;
              currentQueryImage = kBowieImage;
              currentQueryInfo = kBowieInfo;
              break;
            case 'Younge Hall':
              currentQueryURL = kYounge_url;
              currentQueryImage = kYoungeImage;
              currentQueryInfo = kYounge_url;
              break;
          }
        },
        leading: Icon(Icons.location_city),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
