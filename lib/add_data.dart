import 'package:contra/tools/tools.dart';

import 'models/engineer_model.dart';
import 'models/marker_model.dart';
import 'models/worker_model.dart';

void dataModelPopulate(){

  Tools.markersList.add(MarkersModel(
      1,
      2.0,
      "Concreate Lanka (Pvt) Ltd",
      "Concreate Lanka (PVT) Ltd is a major supplier of cover blocks to the construction industry. Supplies a compressive range of fiber-reinforced cover blocks/spacers in Sri Lanka. The range includes 15mm to 112mm covers and circular spacers from 30mm to 220mm and space bars. Cover blocks cast in standard methods with the best quality control to attain accurate dimensions and to maintain precise compression strength. ",
      "6.853769",
      "80.089342",
      "https://wedabima.com/storage/special_contractors/logos/wedabima.com_WhatsApp_Image_2021-03-02_at_12.12.55_PM1614663424.jpeg",
      "59-69 Wijerama Road, Nugegoda","Award for best concrete mix","10X10 Concrete Slab = 5000/= LKR, 5X5 Brick Wall=3000/= LKR","Normal Tender=1000/= ","We use premium material", "We use latest concrete mix and bonding technology","We comply with SLS safety standards","Structural Engineer, Chemical Engineer, Industrial Engineer","Common Labour, Welder"));
  Tools.markersList.add(MarkersModel(
      2,
      5.0,
      "Amarajeewa Construction",
      "Amarajeewa Construction has been building on its reputation as an unconventional construction company since 1989.We work hard for our client, for our community. Our job goes beyond just and gaining short term customer satisfaction. Our goal is to establish long term client relationships.",
      "6.720770",
      "79.908862",
      "https://wedabima.com/storage/special_contractors/logos/wedabima.com_social-media-icon1638024522.jpg",
      "59-69 Wijerama Road, Nugegoda","Award for best concrete mix","10X10 Concrete Slab = 5000/= LKR, 5X5 Brick Wall=3000/= LKR","Normal Tender=1000/= ","We use premium material", "We use latest concrete mix and bonding technology","We comply with SLS safety standards","Structural Engineer, Chemical Engineer, Industrial Engineer","Common Labour, Welder"));
  Tools.markersList.add(MarkersModel(
      3,
      3.0,
      "PMJ Construction",
      "We are committed to give our best in construction of your steel building or ware house requirement in the minimal cost and time.",
      "7.002607",
      "79.957444",
      "https://wedabima.com/storage/special_contractors/logos/wedabima.com_wedabima.com_gg_15506379211618031525.jpg",
      "59-69 Wijerama Road, Nugegoda","Award for best concrete mix","10X10 Concrete Slab = 5000/= LKR, 5X5 Brick Wall=3000/= LKR","Normal Tender=1000/= ","We use premium material", "We use latest concrete mix and bonding technology","We comply with SLS safety standards","Structural Engineer, Chemical Engineer, Industrial Engineer","Common Labour, Welder"));

  Tools.markersList.add(MarkersModel(
      4,
      2.0,
      "KN Construction",
      "KN Construction provides your all engineering construction requirements with qualified architectures ,engineers ,surveyors, quantity surveyors, technical officers in fast and genuinely with including all materials according to engineering specification in all around the Sri Lanka. Also provides lanscaping work, ceiling work, i panels, electrical work, granite designs, granite wall designs, 3D home designs and etc. ",
      "6.909899",
      "79.896347",
      "https://wedabima.com/storage/special_contractors/logos/wedabima.com_wedabima.com_120300465_175186857559351_1110482690006835175_n16148282961621236382.jpg",
      "59-69 Wijerama Road, Nugegoda","Award for best concrete mix","10X10 Concrete Slab = 5000/= LKR, 5X5 Brick Wall=3000/= LKR","Normal Tender=1000/= ","We use premium material", "We use latest concrete mix and bonding technology","We comply with SLS safety standards","Structural Engineer, Chemical Engineer, Industrial Engineer","Common Labour, Welder"));
  Tools.markersList.add(MarkersModel(
      5,
      1.0,
      "Finex Engineering Private Ltd",
      "FINEX Engineering have been serving the construction industry for the last 3 decades under the brand name Finco Engineering; the pioneers in construction chemicals & engineering solutions. In celebration of the 35th anniversary, we accelerated our business focus with the intention of bringing the FINEST INNOVATION & EXPERTISE; therefore we will serve under our new signature ; FINEX Engineering.",
      "6.849064",
      "79.924695",
      "https://wedabima.com/storage/special_contractors/logos/wedabima.com_logo14_(1)_1545302824.jpg",
      "59-69 Wijerama Road, Nugegoda","Award for best concrete mix","10X10 Concrete Slab = 5000/= LKR, 5X5 Brick Wall=3000/= LKR","Normal Tender=1000/= ","We use premium material", "We use latest concrete mix and bonding technology","We comply with SLS safety standards","Structural Engineer, Chemical Engineer, Industrial Engineer","Common Labour, Welder"));

  ////////////////////////////////////////////////////////////////
  Tools.workersList.add(WorkerModel(
      1,
      "Backhoe Operator",
      "Has to operate backhoe within a site",
      ));
  Tools.workersList.add(WorkerModel(
    2,
    "General Worker",
    "Has to support main instructor",
  ));

  Tools.workersList.add(WorkerModel(
    3,
    "Welder",
    "Has to weld iron",
  ));


  //////////////////////////////////////////
  Tools.engineersList.add(EngineerModel(
    1,
    "Piling Engineer",
    "Has to supervise piling",
  ));
  Tools.engineersList.add(EngineerModel(
    1,
    "Architecture Engineer",
    "Has to design architecture",
  ));
  Tools.engineersList.add(EngineerModel(
    1,
    "Structural Engineer",
    "Keep track of structural integrity",
  ));
}