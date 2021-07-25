import 'dart:convert';

class Api {
  final Map<String, dynamic> menuData = jsonDecode('''{
      "_id":"5e612d18a68dd500175a9ce3",
      "data":[
         {
            "almoco":{
               "suc":"GOIABA / LIMÃO",
               "p1":"FRANGO COM AVEIA",
               "p2":"ALMÔNDEGAS AO MOLHO CONCASSÉ",
               "gua":"PARAFUSO COM MANJERICÃO - ARROZ BRANCO - FEIJÃO PRETO",
               "sob":"MELANCIA",
               "veg":"TORTA MADALENA COM  SOJA",
               "gre":"CARNE COM LEGUMES (C/ MACARRÃO INTEGRAL)",
               "fag":"VATAPÁ",
               "sco":"ABÓBORA COM CEBOLINHO",
               "sal":"ACELGA COM LARANJA E PASSAS"
            },
            "jantar":{
               "suc":"GOIABA / LIMÃO",
               "p1":"PEITO DE FRANGO C/ PALHA E ERVILHA",
               "p2":"FIGADO À PORTUGUESA",
               "gua":"ESPAGUETE",
               "sob":"MELANCIA",
               "sopa":"CANJA",
               "veg":"TORTA DE BATATA DOCE",
               "gre":"FRANGO ACEBOLADO",
               "fag":"*******",
               "sal":"TOMATE C/ PEPINO E ALFACE"
            }
         },
         {
            "almoco":{
               "suc":"TROPICAL / CAJU",
               "p1":"CARNE ASSADA AO MOLHO DE BACON",
               "p2":"PEIXE À FLOR DO PINA",
               "gua":"ABOBRINHA REFOGADA-ARROZ COM CEBOLINHA- FEIJÃO CARIOCA",
               "sob":"DOCE EM TABLETE GOIABA",
               "veg":"YAKISSOBA VEGETARIANO                (C/ QUEIJO COALHO)",
               "gre":"PEITO DE FRANGO COM BATATA DOCE",
               "fag":"FRANGO À MODA KIÈV",
               "sco":"BETERRABA COM CEBOLINHO",
               "sal":"ALFACE COM RÚCULA"
            },
            "jantar":{
               "suc":"TROPICAL / CAJU",
               "p1":"COPA LOMBO COM LARANJA",
               "p2":"STROGONOFF DE FRANGO",
               "gua":"BATATA DOCE",
               "sob":"DOCE TABLETE GOIABA",
               "sopa":"SOPA CRIOULA                    (SEM MACARRÃO)",
               "veg":"GUISADO DE LENTILHA COM LEGUMES                                (COM MACARRÃO)",
               "gre":"ISCA DE CARNE C/ CEBOLA E PIMENTÃO",
               "fag":"ESCONDIDINHO",
               "sal":"CENOURA RALADA COM BETERRABA E REPOLHO"
            }
         },
         {
            "almoco":{
               "suc":"MANGA / TANGERINA",
               "p1":"PEITO DE FRANGO GRELHADO COM PIMENTÕES",
               "p2":"ESCONDIDINHO DE CHARQUE COM ABÓBORA",
               "gua":"REPOLHO REFOGADO- ARROZ COM ERVILHAS - FEIJÃO PRETO",
               "sob":"MELÃO",
               "veg":"CROQUETE DE LEGUMES COM MOLHO DE MOSTARDA",
               "gre":"ISCAS DE CARNE COM CEBOLAS E PIMENTÕES",
               "fag":"BAIÃO DE DOIS",
               "sco":"CENOURA CHIPS",
               "sal":"MIX DE FOLHAS COM TOMATE"
            },
            "jantar":{
               "suc":"MANGA / TANGERINA",
               "p1":"GUISADO COM LEGUMES",
               "p2":"OVOS TEMPERADO",
               "gua":"CUSCUZ",
               "sob":"MELÃO",
               "sopa":"CREME DE ABÓBORA ",
               "veg":"NUGGTES DE MILHO",
               "gre":"FRANGO AO FORNO C/ FRUTAS (COM MACARRÃO INTEGRAL)",
               "fag":"RISOTO",
               "sal":"SALADA AMERICANA (ACELGA, CEN. TOMATE E PALHA)"
            }
         },
         {
            "almoco":{
               "suc":"ACEROLA / ABACAXI COM HORTELÃ",
               "p1":" SUÍNO COM LIMÃO",
               "p2":"FRICASSÊ DE FRANGO",
               "gua":"LEGUMES SAUTÉ- ARROZ COLORIDO-FEIJÃO CARIOCA",
               "sob":"COMPOTA DE BANANA",
               "veg":"FEIJOADA VEGETARIANA",
               "gre":"FRANGO AO FORNO COM ERVAS",
               "fag":"FESTIVAL DE MASSAS",
               "sco":"SALADA DE  ABOBRINHA C/ BERINJELA E PASSAS",
               "sal":"SALADA LIBANESA   (PEPINO, TOMATE, CHICÓRIA E HORTELÃ)"
            },
            "jantar":{
               "suc":"ACEROLA / ABACAXI COM HORTELÃ",
               "p1":"CARNE DE SOL ACEBOLADA",
               "p2":"FRANGO AO MOLHO CONCASSÊ",
               "gua":"MACAXEIRA",
               "sob":"COMPOTA DE BANANA",
               "sopa":"SOPA DE LEGUMES",
               "veg":"QUICHE DE ESPINAFRE",
               "gre":"PEIXE COM ABÓBORA E COUVE",
               "fag":"PARMEGIANA DE FRANGO",
               "sal":"MIX DE FOLHAS COM REPOLHO ROXO"
            }
         },
         {
            "almoco":{
               "suc":"UVA / MARACUJÁ",
               "p1":"DOBRADINHA",
               "p2":"PEITO DE FRANGO ACEBOLADO COM PIMENTÃO VERMELHO",
               "gua":"FAROFA CROCANTE- ARROZ BRANCO- FEIJÃO CARIOCA",
               "sob":"MAMÃO",
               "veg":"NUGGETS DE MILHO COM MOLHO DE ERVAS",
               "gre":"PEIXE COM MAXIXE E ABÓBORA",
               "fag":"ESCONDIDINHO",
               "sco":"LEGUMES COM CHEIRO VERDE",
               "sal":"VINAGRETE"
            },
            "jantar":{
               "suc":"UVA / MARACUJÁ",
               "p1":"FRANGO COM ALHO FRITO",
               "p2":"MADALENA DE CARNE",
               "gua":"ARROZ COLORIDO",
               "sob":"MAMÃO",
               "sopa":"MUNGUZÁ",
               "veg":"BERINJELA À PARMEGIANA    (COM MACARRÃO)",
               "gre":"BIFE COM CEBOLAS DOURADAS             (MACARRÃO INTEGRAL)",
               "fag":"****",
               "sal":"MIX DE FOLHAS COM CEBOLA ROXA TEMPERADA"
            }
         }
      ],
      "number_week":11,
      "year":2020,
      "createdAt":"2020-03-05T16:47:20.311Z",
      "updatedAt":"2020-03-05T16:47:20.311Z",
      "__v":0
   }''');
}
