:- dynamic large_model/2.
:- dynamic modality/2.
:- dynamic type/2.
:- dynamic description/2.
:- dynamic createdBy/2.
:- dynamic context_windows_size/2.
:- dynamic availability/2.
:- dynamic deployment/2.


% large_model\2 Id, ModelName
large_model(1, deepSeek).
large_model(2, chatGpt).
large_model(3, claude).
large_model(4, bert).
large_model(5, midjourney).
large_model(6, mistral).
large_model(7, dall-e).
large_model(8, bard).
large_model(9, llama).
large_model(10, deep_floyd_IF).

% modality\2 Id, [Modality]
modality(deepSeek, [texts, documents, tables]).
modality(chatGpt,  [texts, documents, images, voice]).
modality(claude,   [texts, documents, images]). 

modality(bert,          [texts]).
modality(midjourney,    [texts, images]).
modality(mistral,       [texts]).
modality(dall-e,        [texts, images]).
modality(bard,          [texts]).
modality(llama,         [texts]).
modality(deep_floyd_IF, [texts]).
 

% tasks\2 TypeId, Type 
type(deepSeek, [text_generation, text_understanding]).
type(chatGpt,  [text_generation, text_understanding]).
type(claude,   [text_generation, text_understanding]).
type(bert,     [text_understanding]).

type(midjourney,    [image_generation]).
type(mistral,       [text_generation, text_understanding]).
type(dall-e,        [image_generation]).
type(bard,          [text_generation, text_understanding]).
type(llama,         [text_generation, text_understanding]).
type(deep_floyd_IF, [image_generation]).

% description\2 ModelId, [Description]
description(deepSeek, ["DeepSeek – мощная нейросеть для генерации текста, анализа данных и поиска информации, разработанная китайской компанией DeepSeek."]).
description(chatGpt,  ["ChatGPT – чат-бот от OpenAI, основанный на GPT, способный вести диалог, писать код, анализировать текст и помогать в различных задачах."]).
description(claude,   ["Claude – ИИ-ассистент от Anthropic, оптимизированный для безопасного и полезного взаимодействия, с акцентом на естественность ответов"]).
description(bert,     ["BERT – модель от Google для обработки естественного языка (NLP), используемая для понимания контекста в поиске, переводе и анализе текста."]).

description(midjourney,    ["MidJourney – нейросеть для генерации изображений по текстовым запросам, известная своим художественным стилем."]).
description(mistral,       ["Mistral – открытая языковая модель от французской компании Mistral AI, конкурирующая с GPT и Llama."]).
description(dall-e,        ["DALL-E – ИИ от OpenAI, создающий изображения по текстовым описаниям, с поддержкой разных стилей и детализации."]).
description(bard,          ["Bard (теперь Gemini) – чат-бот от Google на основе модели Gemini, предназначенный для поиска, анализа и генерации текста."]).
description(llama,         ["Llama – серия открытых языковых моделей от Meta (Facebook), используемая для исследований и коммерческих решений."])
description(deep_floyd_IF, ["DeepFloyd IF — это мощная тексто-в-изображение модель, разработанная исследовательской группой DeepFloyd. Она основана на каскадной диффузионной архитектуре и отличается высокой детализацией и качеством генерируемых изображений."])

% createdBy\2 ModelId, [Author]
createdBy(deepSeek, [deepSeek]).
createdBy(chatGpt,  [openAi]).
createdBy(claude,   [anthropic]).
createdBy(bert,     [google]).

createdBy(midjourney,    [midJourney]).
createdBy(mistral,       [mitral_AI]).
createdBy(dall-e,        [openAi]).
createdBy(bard,          [google]).
createdBy(llama,         [meta]).
createdBy(deep_floyd_IF, [deepFloyd, stable_Diffusion]).


% context_windows_size\2 VersionId, [Size]
context_windows_size(deepSeek, [very_large]).
context_windows_size(chatGpt,  [very_large]).
context_windows_size(claude,   [very_large]).
context_windows_size(bert,     [small]).

context_windows_size(mistral, [large]).
context_windows_size(bard,    [very_large]).
context_windows_size(llama,   [large]).

% availability\2 Availability, [ModelId]
availability(proprietary,   [2, 3, 5, 7]).
availability(openSource,    [4, 6, 9, 10]).
availability(limitedAccess, [1, 8]).

% deployment(Type, [ModelId])
deployment(_local, [1, 4, 6, 9, 10]).
deployment(cloud, [1, 2, 3, 5, 7, 8]).

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

% -----
get_all_models(Models) :-
    findall(ModelName, large_model(_, ModelName), Models).

get_model_by_id(Id, ModelName) :-
    large_model(Id, ModelName).

get_id_by_model(ModelName, Id) :-
    large_model(Id, ModelName).

get_modalities(ModelName, Modalities) :-
    modality(ModelName, Modalities).

get_task_types(ModelName, TaskTypes) :-
    type(ModelName, TaskTypes).

get_description(ModelName, Description) :-
    description(ModelName, Description).

get_creators(ModelName, Creators) :-
    createdBy(ModelName, Creators).

get_context_window(ModelName, WindowSize) :-
    context_windows_size(ModelName, WindowSize).

get_availability(ModelName, Availability) :-
    large_model(Id, ModelName),
    availability(Availability, Models),
    member(Id, Models).

find_models_by_modality(Modality, Models) :-
    findall(Model, 
            (modality(Model, Modalities), 
             member(Modality, Modalities)), 
            Models).

find_models_by_task_type(TaskType, Models) :-
    findall(Model, 
            (type(Model, TaskTypes), 
             member(TaskType, TaskTypes)), 
            Models).

find_models_by_creator(Creator, Models) :-
    findall(Model, 
            (createdBy(Model, Creators), 
             member(Creator, Creators)), 
            Models).

find_models_by_window_size(WindowSize, Models) :-
    findall(Model, 
            context_windows_size(Model, [WindowSize]), 
            Models).

find_models_by_availability(Availability, Models) :-
    availability(Availability, Ids),
    findall(ModelName, 
            (member(Id, Ids), large_model(Id, ModelName)), 
            Models).

get_full_model_info(ModelName, Info) :-
    large_model(Id, ModelName),
    modality(ModelName, Modalities),
    type(ModelName, TaskTypes),
    description(ModelName, Description),
    createdBy(ModelName, Creators),
    (context_windows_size(ModelName, WindowSize) -> true; WindowSize = unknown),
    (availability(Availability, Models), member(Id, Models) -> true; Availability = unknown),
    Info = [
        id-Id,
        model-ModelName,
        modalities-Modalities,
        task_types-TaskTypes,
        description-Description,
        creators-Creators,
        context_window-WindowSize,
        availability-Availability
    ].

model_selection_assistant :-
    writeln('Добро пожаловать в помощник по выбору модели ИИ!'),
    writeln('Ответьте на несколько вопросов, чтобы подобрать подходящую модель.'),
    nl,
    
    % Шаг 1: Выбор типа задачи
    ask_task_type(TaskType),
    
    % Шаг 2: Выбор модальности
    ask_modality(Modality),
    
    % Шаг 3: Выбор доступности
    ask_availability(Availability),
    
    % Шаг 4: Поиск подходящих моделей
    find_models(TaskType, Modality, Availability, Models),
    
    % Шаг 5: Вывод результатов
    show_results(Models).

% Вопрос о типе задачи
ask_task_type(TaskType) :-
    nl, writeln('Какую задачу вы хотите решить?'),
    writeln('1. Генерация текста'),
    writeln('2. Понимание текста'),
    writeln('3. Генерация изображений'),
    writeln('4. Любая задача'),
    read_line_to_string(user_input, Choice),
    (Choice = "1" -> TaskType = text_generation;
     Choice = "2" -> TaskType = text_understanding;
     Choice = "3" -> TaskType = image_generation;
     Choice = "4" -> TaskType = any;
     (writeln('Некорректный выбор, попробуйте еще раз.'), ask_task_type(TaskType))).

% Вопрос о модальности
ask_modality(Modality) :-
    nl, writeln('С каким типом данных вы работаете?'),
    writeln('1. Текст'),
    writeln('2. Изображения'),
    writeln('3. Документы'),
    writeln('4. Любой тип'),
    read_line_to_string(user_input, Choice),
    (Choice = "1" -> Modality = texts;
     Choice = "2" -> Modality = images;
     Choice = "3" -> Modality = documents;
     Choice = "4" -> Modality = any;
     (writeln('Некорректный выбор, попробуйте еще раз.'), ask_modality(Modality))).

% Вопрос о доступности
ask_availability(Availability) :-
    nl, writeln('Какая доступность модели вам нужна?'),
    writeln('1. Проприетарная (платная)'),
    writeln('2. Открытая (бесплатная)'),
    writeln('3. Ограниченный доступ'),
    writeln('4. Любая доступность'),
    read_line_to_string(user_input, Choice),
    (Choice = "1" -> Availability = proprietary;
     Choice = "2" -> Availability = openSource;
     Choice = "3" -> Availability = limitedAccess;
     Choice = "4" -> Availability = any;
     (writeln('Некорректный выбор, попробуйте еще раз.'), ask_availability(Availability))).

% Поиск моделей по критериям
find_models(TaskType, Modality, Availability, Models) :-
    findall(Model, (
        large_model(_, Model),
        (TaskType == any -> true; (type(Model, TaskTypes), member(TaskType, TaskTypes))),
        (Modality == any -> true; (modality(Model, Modalities), member(Modality, Modalities))),
        (Availability == any -> true; (
            large_model(Id, Model),
            (availability(Availability, ModelsIds), member(Id, ModelsIds))
        )
    )), Models).
    
% Вывод результатов
show_results([]) :-
    nl, writeln('К сожалению, по вашим критериям не найдено подходящих моделей.').

show_results(Models) :-
    nl, writeln('Подходящие модели:'), nl,
    forall(member(Model, Models), (
        get_full_model_info(Model, Info),
        format('Модель: ~w~n', [Model]),
        member(modalities-Mods, Info), format('Модальности: ~w~n', [Mods]),
        member(task_types-Tasks, Info), format('Задачи: ~w~n', [Tasks]),
        member(availability-Avail, Info), format('Доступность: ~w~n', [Avail]),
        member(description-[Desc], Info), format('Описание: ~w~n', [Desc]),
        nl
    )).

add_large_model(ModelName) :-
    (findall(Id, large_model(Id, _), Ids),  % Получаем все существующие ID
    (Ids = [] -> NewId = 1;                 % Если база пуста, начинаем с 1
     max_list(Ids, MaxId), NewId is MaxId + 1), % Иначе +1 к максимальному
    assertz(large_model(NewId, ModelName)),
    format('Добавлена новая модель: ID=~w, Name=~w~n', [NewId, ModelName])).

% Добавление модальности для модели
add_modality(ModelName, Modality) :-
    (modality(ModelName, Modalities) ->
        (member(Modality, Modalities) -> 
            writeln('Эта модальность уже существует для данной модели');
            retract(modality(ModelName, Modalities)),
            NewModalities = [Modality|Modalities],
            assertz(modality(ModelName, NewModalities)));
    assertz(modality(ModelName, [Modality]))).

% Добавление типа задачи для модели
add_task_type(ModelName, TaskType) :-
    (type(ModelName, TaskTypes) ->
        (member(TaskType, TaskTypes) -> 
            writeln('Этот тип задачи уже существует для данной модели');
            retract(type(ModelName, TaskTypes)),
            NewTaskTypes = [TaskType|TaskTypes],
            assertz(type(ModelName, NewTaskTypes)));
    assertz(type(ModelName, [TaskType]))).

% Добавление описания модели
add_description(ModelName, Description) :-
    (description(ModelName, Descriptions) ->
        retract(description(ModelName, Descriptions)),
    assertz(description(ModelName, [Description|Descriptions]));
    assertz(description(ModelName, [Description]))).

% Добавление создателя модели
add_creator(ModelName, Creator) :-
    (createdBy(ModelName, Creators) ->
        (member(Creator, Creators) -> 
            writeln('Этот создатель уже указан для данной модели');
            retract(createdBy(ModelName, Creators)),
            NewCreators = [Creator|Creators],
            assertz(createdBy(ModelName, NewCreators)));
    assertz(createdBy(ModelName, [Creator]))).

% Добавление размера контекстного окна
add_context_window(ModelName, WindowSize) :-
    (context_windows_size(ModelName, WindowSizes) ->
        retract(context_windows_size(ModelName, WindowSizes)),
    assertz(context_windows_size(ModelName, [WindowSize|WindowSizes]));
    assertz(context_windows_size(ModelName, [WindowSize]))).

% Добавление доступности модели
add_availability(ModelName, Availability) :-
    large_model(Id, ModelName),
    (availability(Availability, Models) ->
        (member(Id, Models) -> 
            writeln('Эта доступность уже указана для данной модели');
            retract(availability(Availability, Models)),
            NewModels = [Id|Models],
            assertz(availability(Availability, NewModels)));
    assertz(availability(Availability, [Id]))).

% Интерфейс для добавления новой модели
add_new_model :-
    writeln('Добавление новой модели ИИ в базу знаний:'),
    nl,
    writeln('Введите название модели:'),
    read_line_to_string(user_input, ModelName),
    add_large_model(ModelName),

    % Добавление модальностей
    writeln('Добавить модальности модели (через запятую):'),
    writeln('Доступные варианты: texts, documents, images, voice, tables'),
    read_line_to_string(user_input, ModalitiesStr),
    split_string(ModalitiesStr, ",", " ", ModalityList),
    forall(member(Modality, ModalityList), 
           add_modality(ModelName, Modality)),

    % Добавление типов задач
    writeln('Добавить типы задач модели (через запятую):'),
    writeln('Доступные варианты: text_generation, text_understanding, image_generation'),
    read_line_to_string(user_input, TasksStr),
    split_string(TasksStr, ",", " ", TaskList),
    forall(member(Task, TaskList), 
           add_task_type(ModelName, Task)),

    % Добавление описания
    writeln('Введите описание модели:'),
    read_line_to_string(user_input, Description),
    add_description(ModelName, Description),

    % Добавление создателей
    writeln('Добавить создателей модели (через запятую):'),
    read_line_to_string(user_input, CreatorsStr),
    split_string(CreatorsStr, ",", " ", CreatorList),
    forall(member(Creator, CreatorList), 
           add_creator(ModelName, Creator)),

    % Добавление размера контекстного окна
    writeln('Введите размер контекстного окна (small, large, very_large):'),
    read_line_to_string(user_input, WindowSize),
    add_context_window(ModelName, WindowSize),

    % Добавление доступности
    writeln('Введите доступность модели (proprietary, openSource, limitedAccess):'),
    read_line_to_string(user_input, Availability),
    add_availability(ModelName, Availability),

    writeln('Модель успешно добавлена!').

write_models :-
    findall(Model, large_model(_, Model), ModelList),
    forall(member(Mod, ModelList),
        writeln(Mod))

% Обновленный стартовый предикат с меню
start :-
    writeln('Выберите действие:'),
    writeln('1. Подбор модели ИИ'),
    writeln('2. Добавить новую модель'),
    read_line_to_string(user_input, Choice),
    (
        Choice = "1" -> model_selection_assistant;
        Choice = "2" -> add_new_model;
        Choice = "3" -> write_models;
     (writeln('Некорректный выбор'), start)),
     start.