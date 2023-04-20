// ignore: camel_case_types
class Liste_questions {
  final int id, answer;
  final String question;
  final List<String> options;

  // ignore: non_constant_identifier_names
  Liste_questions({ required this.id, required this.question, required this.answer, required this.options});
}

// ignore: constant_identifier_names
const List sample_data = [
  {
    "id": 1,
    "question":
        "Combien de régions compte le Cameroun ?",
    "options": ['-10', '-15', '-13 en 2012', '-Aucune reponse juste'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question": "Quel est le nombre d'arrondissement compte la region de l'adamaoua",
    "options": ['-25', '-45', '-48', '-Aucune reponse juste'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Donnez le nombre de relief que l'on distingue au Cameroun",
    "options": ['-14', '-25', '-3', '-Aucune reponse juste'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Que pouvez vous dire du climat à l'extreme Nord",
    "options": ['-climat chaud ', '-climat aride', '-climat doux', '-climat rude'],
    "answer_index": 3,
  },

   {
    "id": 5,
    "question": "Combien de saison  compte le climat  du Cameroun",
    "options": ['-5 ', '-3', '-4', '-6'],
    "answer_index": 2,
  },
   {
    "id": 6,
    "question": "A combien est estimé la population du Cameroun en 2021",
    "options": ['-26M hbts ', '-30M hbts', '-24M hbts', '-Aucune réponse juste'],
    "answer_index": 0,
  },
   {
    "id": 7,
    "question": "Quelle est la ville la plus peuplée du Cameroun",
    "options": ['-Douala', '-Yaoundé', '-Ngaoundéré', '-Bafoussam'],
    "answer_index": 0,
  },
   {
    "id": 8,
    "question": "Quelle est la ville la moins peuplée du Cameroun",
    "options": ['-Bertoua', '-Kribi', '-Limbé', '-Buea'],
    "answer_index": 2,
  },
   {
    "id": 9,
    "question": "Quelle est la ville la plus  grande du Cameroun",
    "options": ['-Bertoua', '-Yaoundé', '-Ebolowa', '-Ngaoundéré'],
    "answer_index": 2,
  },
   {
    "id": 10,
    "question": "Combien d'Ethnies compte le Cameroun",
    "options": ['-Env 258', '-Env 300', '-Moins de 248', '-Plus de 248'],
    "answer_index": 0,
  },
];
