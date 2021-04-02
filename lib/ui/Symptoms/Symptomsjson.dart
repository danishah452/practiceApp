class Symptoms {
  final dynamic id;
  final String name;
  final String description;

  Symptoms({this.id, this.name, this.description});
}

List<Symptoms> symList = [
  new Symptoms(
      id: 1,
      name: 'Movement',
      description: 'There may be a tremor in the hands.'),
  new Symptoms(
      id: 2,
      name: 'Coordination',
      description:
          ' A reduced sense of coordination and balance can cause people to drop items they are holding. They may be more likely to fall.'),
  new Symptoms(
      id: 3,
      name: 'Gait',
      description:
          'The person’s posture may change, so that they lean forward slightly, as if they were hurrying. They may also develop a shuffling gait.'),
  new Symptoms(
      id: 4,
      name: 'Voice',
      description:
          'There may be a tremor in the voice, or the person may speak more softly than before.'),
  new Symptoms(
      id: 5,
      name: 'Sense of smell',
      description: 'A loss of sense of smell can be an early sign.'),
  new Symptoms(
      id: 6,
      name: 'Sleep problems',
      description: 'These are a feature of Parkinson’s, and they may be an early sign. Restless legs may contribute to this.'),
  new Symptoms(
      id: 7,
      name: 'Facial expression',
      description: 'This can become fixed, due to changes in the nerves that control facial muscles.'),
  new Symptoms(
      id: 8,
      name: 'Handwriting',
      description: 'This may become more cramped and smaller.')
];
