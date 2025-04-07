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
 * role\2 ModelId, [Role]
 */
role(1, ["Генерирует "]).



/**
 * context_windows_size\2 VersionId, [Size]
 */
context_windows_size(4,  [128000, "128K"]).
context_windows_size(12, [200000, "200K"]).


/**
 * availability\2 Availability, [ModelId]
 */
availability(proprietary, [2, 3, 5, 7]).
availability(openSource, [4, 6, 9]).
availability(limitedAccess, [1, 8]).


model_context_window_size(ModelId, Size):-
  version(VersionId, ModelId, _),
  context_windows_size(VersionId, Size).

model_by_modality(Modality, ModelId):-
  modality(ModelId, Modalitys),
  member(Modality, Modalitys).

models_by_modality(Modality, Models):-
  findall(X, model_by_modality(Modality, X), Models).