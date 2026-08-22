/// A single myth/fact pair shown on a flip card.
class MythFact {
  final String myth;
  final String fact;

  const MythFact({required this.myth, required this.fact});
}

/// Mock content for the Myth vs Fact cards screen.
/// Replace/expand with real copy whenever it's ready.
const List<MythFact> mockMythFacts = [
  MythFact(
    myth: 'Only women with a family history get breast cancer.',
    fact:
        'Most people diagnosed with breast cancer have no family history of it at all.',
  ),
  MythFact(
    myth: 'A mammogram causes breast cancer to spread.',
    fact:
        'Mammograms use a very low dose of radiation and do not cause cancer to spread.',
  ),
  MythFact(
    myth: 'Breast cancer always causes a noticeable lump.',
    fact:
        'Early breast cancer often has no symptoms at all, which is why screening matters.',
  ),
  MythFact(
    myth: 'Men cannot get breast cancer.',
    fact: 'Men have breast tissue too and can develop breast cancer.',
  ),
  MythFact(
    myth: 'Wearing an underwire bra increases your risk of breast cancer.',
    fact:
        'There is no scientific evidence linking bra style or underwire to breast cancer risk.',
  ),
];