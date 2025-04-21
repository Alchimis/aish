large_model(availability, proprietary).
large_model(deployment, cloud).
large_model(modality, [texts, documents]).
large_model(context_window_size, very_large).
large_model(model_size, [large, very_large, giant]).
large_model(tasks, [text_generation, text_understanding]).

deep_seek(a_kind_of, large_model).
deep_seek(availability, limited_access).
deep_seek(deployment, [local, cloud]).
deep_seek(modality, [texts, documents, tables]).

chat_GPT(a_kind_of, large_model).
chat_GPT(modality, [texts, documents, images, voice]).

claude(a_kind_of, large_model).
claude(modality, [texts, documents, images]).
claude(model_size, [very_large, giant]).

bard(a_kind_of, large_model).
bard(availability, limited_access).
bard(model_size, very_large).


image_generator(availability, proprietary).
image_generator(deployment, cloud).
image_generator(modality, [texts, images]).
image_generator(model_size, very_large).
image_generator(tasks, [image_generation]).


midjourney(a_kind_of, image_generator).
dall_e(a_kind_of, image_generator).

deep_floyd_IF(a_kind_of, image_generator).
deep_floyd_IF(availability, open_source).
deep_floyd_IF(deployment, [local]).
deep_floyd_IF(model_size, [giant]).

local_model(availability, open_source).
local_model(deployment, local).
local_model(modality, [texts]).
local_model(context_window_size, Large).
local_model(model_size, [large, very_large]).
local_model(tasks, [text_generation, text_understanding]).

llama(a_kind_of, local_model).

mistral(a_kind_of, local_model).

bert(a_kind_of, local_model).
bert(context_window_size, small).
bert(model_size, middle).
bert(tasks, text_understanding).
