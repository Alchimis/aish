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
version(14, 4, bert).
version(15, 4, _RoBERTa).
version(16, 4, _DistilBERT).
version(17, 4, _ALBERT).
version(18, 4, _TinyBERT).
version(19, 5, midjourney_v1).
version(20, 5, midjourney_v2).
version(21, 5, midjourney_v3).
version(22, 5, midjourney_v4).
version(23, 5, midjourney_v5).
version(24, 5, midjourney_v6).
version(25, 6, mistral_7b).
version(26, 6, mistral_small_3).
version(27, 6, mistral_large_2).
version(28, 7, dall_e_1).
version(29, 7, dall_e_2).
version(30, 7, dall_e_3).
version(31, 8, bard).
version(32, 8, bard_2).
version(33, 8, bard_3).
version(34, 9, llama_2).
version(35, 9, llama_3).
version(36, 9, llama_4).
version(37, 6, mixtral_8x7b).
version(38, 6, mixtral_8x22b).


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
model_version_size(1,  ["7B", "7 billions", "7 миллиардов"]).
model_version_size(2,  ["67B", "67 billions", "67 миллиардов"]).
model_version_size(3,  ["236B", "236 billions", "236 миллиардов"]).
model_version_size(4,  ["671B", "671 billions", "671 миллиардов"]).
model_version_size(5,  ["671B", "671 billions", "671 миллиардов"]).
model_version_size(6,  ["117M", "117 millions", "117 миллионов"]).
model_version_size(7,  ["1.5B", "1.5 billions", "1.5 миллиарда"]).
model_version_size(8,  ["175B", "175 billions", "175B миллиардов"]).
model_version_size(9,  ["1.76T", "1.76 trillions", "1.76 триллионов"]).
model_version_size(14, ["110M", "110 millions", "110 миллионов"]).
model_version_size(15, ["355M", "335 millions", "335 миллионов"]).
model_version_size(16, ["66M", "66 millions", "66 миллионов"]).
model_version_size(17, ["12M", "12 millions", "12 миллионов"]).
model_version_size(18, ["4.4M", "4.4 millions", "4.4 миллионов"]).
model_version_size(25, ["7B", "7 billions", "7 миллиардов"]).
model_version_size(26, ["24B", "24 billions", "24 миллиардов"]).
model_version_size(37, ["56B", "56 billions", "56 миллиардов"]).
model_version_size(38, ["176B", "176 billions", "176 миллиардов"]).
model_version_size(34, ["13B", "13 billions", "13 миллиардов"]).
model_version_size(35, ["405B", "405 billions", "405 миллиардов"]).


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
 * min_ram VersionId, RAM
 */
min_ram(2, 64).
min_ram(8, 64).

/**
 * min_vam VersionId, VRAM
 */
min_vram(2, 7).
min_vram(8, 10).


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

% Главный предикат для подбора модели
recommend_model(Requirements, Recommendations) :-
    findall(Model, (
        large_model(Id, Model),
        satisfies_requirements(Id, Requirements)
    ), Models),
    (Models = [] -> 
        Recommendations = 'Не найдено моделей, удовлетворяющих вашим требованиям.';
        format_models_info(Models, Recommendations)).

% Проверка, что модель удовлетворяет всем требованиям
satisfies_requirements(ModelId, Requirements) :-
    forall(member(Req, Requirements), satisfies_requirement(ModelId, Req)).

% Проверка отдельных требований
satisfies_requirement(ModelId, modality(Modality)) :-
    modality(ModelId, Modalities),
    member(Modality, Modalities).

satisfies_requirement(ModelId, availability(AvailabilityType)) :-
    availability(AvailabilityType, Models),
    member(ModelId, Models).

satisfies_requirement(ModelId, deployment(DeploymentType)) :-
    deployment(DeploymentType, Models),
    member(ModelId, Models).

satisfies_requirement(ModelId, free) :-
    version(VersionId, ModelId, _),
    pricing(VersionId, Prices),
    member(free, Prices).

satisfies_requirement(ModelId, min_context_window(MinSize)) :-
    version(VersionId, ModelId, _),
    context_windows_size(VersionId, [Size, _]),
    Size >= MinSize.

% Форматирование информации о моделях для вывода
format_models_info(Models, Output) :-
    maplist(get_model_info, Models, ModelsInfo),
    atomic_list_concat(ModelsInfo, '\n\n', Output).

get_model_info(Model, Info) :-
    large_model(Id, Model),
    description(Id, [Desc|_]),
    modality(Id, Modalities),
    atomic_list_concat(Modalities, ', ', ModalitiesStr),
    find_versions(Id, VersionsStr),
    find_availability(Id, Availability),
    format(atom(Info), 
           'Модель: ~w\nОписание: ~w\nПоддерживаемые модальности: ~w\nВерсии: ~w\nДоступность: ~w',
           [Model, Desc, ModalitiesStr, VersionsStr, Availability]).

find_versions(ModelId, VersionsStr) :-
    findall(Version, version(_, ModelId, Version), Versions),
    atomic_list_concat(Versions, ', ', VersionsStr).

find_availability(ModelId, Availability) :-
    (availability(proprietary, Models), member(ModelId, Models) -> 
        Availability = 'Проприетарная';
     availability(openSource, Models), member(ModelId, Models) -> 
        Availability = 'Открытая';
     availability(limitedAccess, Models), member(ModelId, Models) -> 
        Availability = 'Ограниченный доступ';
     Availability = 'Неизвестно').


% Главная процедура для взаимодействия с пользователем
start_recommendation :-
    writeln('Помогу подобрать подходящую модель ИИ. Ответьте на несколько вопросов:'),
    collect_requirements([]).

% Сбор требований через диалог с пользователем
collect_requirements(Requirements) :-
    ask_modality(Requirements, NewRequirements),
    ask_availability(NewRequirements, NewRequirements2),
    ask_deployment(NewRequirements2, NewRequirements3),
    ask_pricing(NewRequirements3, NewRequirements4),
    ask_context_window(NewRequirements4, FinalRequirements),
    process_recommendation(FinalRequirements).

% Вопрос о модальности
ask_modality(Requirements, NewRequirements) :-
    writeln('\nКакие типы данных должна обрабатывать модель?'),
    writeln('1 - Текст'),
    writeln('2 - Документы'),
    writeln('3 - Изображения'),
    writeln('4 - Голос'),
    writeln('5 - Таблицы'),
    writeln('0 - Закончить выбор'),
    read_modality_choices([], Modalities),
    (Modalities = [] -> 
        NewRequirements = Requirements;
        add_modality_requirements(Modalities, Requirements, NewRequirements)).

read_modality_choices(Current, Result) :-
    read_number(Choice),
    (Choice = 0 -> Result = Current;
     between(1, 5, Choice) ->
        (member(Choice, Current) -> 
            writeln('Уже выбрано, введите другой вариант'),
            read_modality_choices(Current, Result);
         atom_number(ModalityAtom, Choice),
         modality_mapping(ModalityAtom, Modality),
         read_modality_choices([Modality|Current], Result));
     writeln('Неверный выбор, попробуйте снова'),
     read_modality_choices(Current, Result)).

modality_mapping(1, texts).
modality_mapping(2, documents).
modality_mapping(3, images).
modality_mapping(4, voice).
modality_mapping(5, tables).

add_modality_requirements([], Reqs, Reqs).
add_modality_requirements([H|T], Reqs, NewReqs) :-
    add_modality_requirements(T, [modality(H)|Reqs], NewReqs).

% Вопрос о доступности
ask_availability(Requirements, NewRequirements) :-
    writeln('\nКакая лицензия нужна?'),
    writeln('1 - Проприетарная'),
    writeln('2 - Открытая'),
    writeln('3 - Ограниченный доступ'),
    writeln('0 - Не важно'),
    read_number(Choice),
    (Choice = 0 -> NewRequirements = Requirements;
     between(1, 3, Choice) ->
        availability_mapping(Choice, Availability),
        NewRequirements = [availability(Availability)|Requirements];
     writeln('Неверный выбор, пропускаем вопрос'),
     NewRequirements = Requirements).

availability_mapping(1, proprietary).
availability_mapping(2, openSource).
availability_mapping(3, limitedAccess).

% Вопрос о развертывании
ask_deployment(Requirements, NewRequirements) :-
    writeln('\nГде нужно развертывать модель?'),
    writeln('1 - Локально'),
    writeln('2 - В облаке'),
    writeln('0 - Не важно'),
    read_number(Choice),
    (Choice = 0 -> NewRequirements = Requirements;
     between(1, 2, Choice) ->
        deployment_mapping(Choice, Deployment),
        NewRequirements = [deployment(Deployment)|Requirements];
     writeln('Неверный выбор, пропускаем вопрос'),
     NewRequirements = Requirements).

deployment_mapping(1, local).
deployment_mapping(2, cloud).

% Вопрос о цене
ask_pricing(Requirements, NewRequirements) :-
    writeln('\nНужна бесплатная модель?'),
    writeln('1 - Да'),
    writeln('2 - Нет'),
    writeln('0 - Не важно'),
    read_number(Choice),
    (Choice = 0 -> NewRequirements = Requirements;
     Choice = 1 -> NewRequirements = [free|Requirements];
     Choice = 2 -> NewRequirements = Requirements;
     writeln('Неверный выбор, пропускаем вопрос'),
     NewRequirements = Requirements).

% Вопрос о контекстном окне
ask_context_window(Requirements, NewRequirements) :-
    writeln('\nВажен ли размер контекстного окна?'),
    writeln('1 - Да, укажите минимальный размер (в токенах)'),
    writeln('2 - Нет'),
    read_number(Choice),
    (Choice = 1 ->
        writeln('Введите минимальный размер контекстного окна:'),
        read_number(Size),
        NewRequirements = [min_context_window(Size)|Requirements];
     Choice = 2 -> NewRequirements = Requirements;
     writeln('Неверный выбор, пропускаем вопрос'),
     NewRequirements = Requirements).

% Обработка рекомендаций
process_recommendation(Requirements) :-
    writeln('\nИщу модели по вашим требованиям...'),
    recommend_model(Requirements, Recommendations),
    writeln('\nРекомендации:'),
    writeln(Recommendations),
    writeln('\nХотите уточнить требования? (1 - Да, 2 - Нет)'),
    read_number(Choice),
    (Choice = 1 -> start_recommendation;
     writeln('Хорошего дня!')).

% Вспомогательные предикаты
read_number(Number) :-
    read_line_to_string(user_input, Input),
    (atom_number(Input, Number) -> true;
     writeln('Пожалуйста, введите число'),
     read_number(Number)).

% Запуск системы
:- initialization(start_recommendation).