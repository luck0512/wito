// ignore: file_names
class FeaturedCardController {
  final List<FeaturedCardDetails> _featuredCardDetails = [
    FeaturedCardDetails(
      featuredCard: FeaturedCard(id: 'id'),
      featuredCard_details: [
        FeaturedCardDetail(
            subtitle: 'Mradi wa ujenzi wa nyumba za watumishi wa Umma',
            title: 'Watumishi Housing Project',
            imageUrl: 'assets/images/Houses.jpg',
            startDate: '12 / 02/ 2020',
            endDate: '1 / 05/ 2024',
            projectLocation: 'Mbeya na Singida'),
      ],
    ),
    FeaturedCardDetails(
      featuredCard: FeaturedCard(id: 'id'),
      featuredCard_details: [
        FeaturedCardDetail(
          subtitle: 'Ujenzi wa reli ya kisasa ya Standard Gauge Railway',
          title: 'SGR Railway Construction',
          imageUrl: 'assets/images/Railway_1.jpeg',
          startDate: '12 / 08/ 2022',
          endDate: '12 / 02/ 2026',
          projectLocation: 'Makutupola',
        ),
      ],
    ),
    FeaturedCardDetails(
      featuredCard: FeaturedCard(id: 'id'),
      featuredCard_details: [
        FeaturedCardDetail(
            subtitle: 'Mradi wa bwawa la umeme la mwalimu Nyerere',
            title: 'MNHPP',
            imageUrl: 'assets/images/Mining_1.jpg',
            startDate: '12 / 02/ 2022',
            endDate: '12 / 02/ 2024',
            projectLocation: 'Manyara')
      ],
    )
  ];

  List<FeaturedCardDetails> get featuredCardDetails => _featuredCardDetails;
}

class FeaturedCardDetails {
  final FeaturedCard featuredCard;
  final List<FeaturedCardDetail> featuredCard_details;

  FeaturedCardDetails({
    required this.featuredCard_details,
    required this.featuredCard,
  });
}

class FeaturedCardDetail {
  final String title;
  final String imageUrl;
  final String subtitle;
  final String startDate;
  final String endDate;
  final String projectLocation;
  

  FeaturedCardDetail(
      {required this.subtitle,
      required this.title,
      required this.imageUrl,
      required this.startDate,
      required this.endDate,
      required this.projectLocation,
      });
}

class FeaturedCard {
  final String id;
  FeaturedCard({required this.id});
}
