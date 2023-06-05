class InayoendeleaCardController {
  final List<InayoendeleaCardDetails> _inayoendeleaCardDetails = [
    InayoendeleaCardDetails(
      inayoendeleaCard: InayoendeleaCard(id: 'id'),
      inayoendeleaCard_details: [
        InayoendeleaCardDetail(
          subtitle: 'Mradi wa ujenzi wa nyumba za watumishi wa Umma',
          title: 'Watumishi Housing Project',
          imageUrl: 'assets/images/Houses.jpg',
        ),
      ],
    ),
    InayoendeleaCardDetails(
      inayoendeleaCard: InayoendeleaCard(id: 'id'),
      inayoendeleaCard_details: [
        InayoendeleaCardDetail(
          subtitle: 'Ujenzi wa reli ya kisasa ya Standard Gauge Railway',
          title: 'SGR Railway Construction',
          imageUrl: 'assets/images/Railway_1.jpeg',
        ),
      ],
    ),
    InayoendeleaCardDetails(
      inayoendeleaCard: InayoendeleaCard(id: 'id'),
      inayoendeleaCard_details: [
        InayoendeleaCardDetail(
          subtitle: 'Mradi wa bwawa la umeme la mwalimu Nyerere',
          title: 'MNHPP',
          imageUrl: 'assets/images/Mining_1.jpg',
        )
      ],
    )
  ];

  List<InayoendeleaCardDetails> get inayoendeleaCardDetails => _inayoendeleaCardDetails;
}

class InayoendeleaCardDetails {
  final InayoendeleaCard inayoendeleaCard;
  final List<InayoendeleaCardDetail> inayoendeleaCard_details;

 InayoendeleaCardDetails({
    required this.inayoendeleaCard_details,
    required this.inayoendeleaCard,
  });
}

class InayoendeleaCardDetail {
  final String title;
  final String imageUrl;
  final String subtitle;

  InayoendeleaCardDetail({
    required this.subtitle,
    required this.title,
    required this.imageUrl,
  });
}

class InayoendeleaCard {
  final String id;
  InayoendeleaCard({required this.id});
}
