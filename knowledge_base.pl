/**
 * large_model\2 Id, ModelName
 */
large_model(1, deepSeek).
large_model(2, chatGpt).
large_model(3, claude).
large_model(4, bert).
large_model(5, midjourney).
large_model(7, mistral).
large_model(8, dall-e).



/**
 * modality\2 Id, [Modality]
 */
modality(1, [texts, documents, tables]).
modality(2, [texts, documents, images, voice]).
modality(3, [texts, documents, images]).
