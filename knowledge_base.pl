/**
 * large_model\2 Id, ModelName
 */
large_model(1, deepSeek).
large_model(2, chatGpt).
large_model(3, claude).
large_model(4, bert).
large_model(5, midjourney).
large_model(6, mistral).
large_model(7, dall-e).
large_model(8, bard).
large_model(9, llama).


/**
 * version\2 VersionId, ModelId, VersionName
 */
version(1,  1, deepSeek_7B).
version(2,  1, deepSeek_67B).
version(3,  1, deepSeek_v2).
version(4,  1, deepSeek_v3).
version(5,  1, deepSeek_r1).
version(6,  2, gpt_1).
version(7,  2, gpt_2).
version(8,  2, gpt_3).
version(9,  2, gpt_4).
version(10, 3, claude_1).
version(11, 3, claude_2).
version(12, 3, claude_3).
version(13, 2, gpt_3_5).


/**
 * modality\2 Id, [Modality]
 */
modality(1, [texts, documents, tables]).
modality(2, [texts, documents, images, voice]).
modality(3, [texts, documents, images]). 

modality(4, [texts]).
modality(5, [texts, images]).
modality(6, [texts]).
modality(7, [texts, images]).
modality(8, [texts]).
modality(9, [texts]).

 
 /**
  * model_version_size\2 VersionId, [Size]
  */
model_version_size(1, ["7B", "7 billions", "7 миллиардов"]).
model_version_size(2, ["67B", "67 billions", "67 миллиардов"]).
model_version_size(3, ["236B", "236 billions", "236 миллиардов"]).
model_version_size(4, ["671B", "671 billions", "671 миллиардов"]).
model_version_size(5, ["671B", "671 billions", "671 миллиардов"]).
model_version_size(6, ["117M", "117 millions", "117 миллионов"]).
model_version_size(7, ["1.5B", "1.5 billions", "1.5 миллиарда"]).
model_version_size(8, ["175B", "175 billions", "175B миллиардов"]).
model_version_size(9, ["1.76T", "1.76 trillions", "1.76 триллионов"]).

/**
 * type\2 TypeId, Type 
 */
type(1, generativeModel).

/**
 * description\2 ModelId, [Description]
 */
description(1, ["DeepSeek – мощная нейросеть для генерации текста, анализа данных и поиска информации, разработанная китайской компанией DeepSeek."]).
description(2, ["ChatGPT – чат-бот от OpenAI, основанный на GPT, способный вести диалог, писать код, анализировать текст и помогать в различных задачах."]).
description(3, ["Claude – ИИ-ассистент от Anthropic, оптимизированный для безопасного и полезного взаимодействия, с акцентом на естественность ответов"]).
description(4, ["BERT – модель от Google для обработки естественного языка (NLP), используемая для понимания контекста в поиске, переводе и анализе текста."]).
description(5, ["MidJourney – нейросеть для генерации изображений по текстовым запросам, известная своим художественным стилем."]).
description(6, ["Mistral – открытая языковая модель от французской компании Mistral AI, конкурирующая с GPT и Llama."]).
description(7, ["DALL-E – ИИ от OpenAI, создающий изображения по текстовым описаниям, с поддержкой разных стилей и детализации."]).
description(8, ["Bard (теперь Gemini) – чат-бот от Google на основе модели Gemini, предназначенный для поиска, анализа и генерации текста."]).
description(9, ["Llama – серия открытых языковых моделей от Meta (Facebook), используемая для исследований и коммерческих решений."])

/**
 * createdBy\2 ModelId, [Author]
 */
createdBy(1, [deepSeek]).
createdBy(2, [openAi]).
createdBy(3, [anthropic]).
createdBy(4, [google]).
createdBy(5, [midJourney]).
createdBy(6, [mitral_AI]).
createdBy(7, [openAi]).
createdBy(8, [google]).
createdBy(9, [meta]).




/**
 * context_windows_size\2 VersionId, [Size]
 */
context_windows_size(4,  [128000, "128K"]).
context_windows_size(12, [200000, "200K"]).


/**
 * availability\2 Availability, [ModelId]
 */
availability(proprietary,   [2, 3, 5, 7]).
availability(openSource,    [4, 6, 9]).
availability(limitedAccess, [1, 8]).

/**
 * deployment(Type, [ModelId])
 */
deployment(_local, [1, 4, 6, 9]).
deployment(cloud, [1, 2, 3, 5, 7, 8]).

/**
 * pricing VersionId, [Pricing]
 */
pricing(4, [free]).
pricing(2, [free]).

/**
 * hardware_requirements VersionId, [Requirements]
 */

model_context_window_size(ModelId, Size):-
  version(VersionId, ModelId, _),
  context_windows_size(VersionId, Size).

model_by_modality(Modality, ModelId):-
  modality(ModelId, Modalitys),
  member(Modality, Modalitys).

models_by_modality(Modality, Models):-
  findall(X, model_by_modality(Modality, X), Models).

find_version(Id, version(VersionId, VersionName)):- version(VersionId, Id, VersionName).


find_model(Id, model(ModelName, Versions, Description, Modality)):-
    large_model(Id, ModelName),
    findall(X, find_version(Id, X), Versions),
    description(Id, Description),
    modality(Id, Modality).