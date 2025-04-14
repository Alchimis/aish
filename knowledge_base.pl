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
context_windows_size(3,   [128000, "128K"]).
context_windows_size(4,   [128000, "128K"]).
context_windows_size(9,   [128000, "128K"]).
context_windows_size(10,  [9000,   "9K"]).
context_windows_size(11,  [100000, "100K"]).
context_windows_size(12,  [200000, "200K"]).
context_windows_size(14,  [512,    "512"]).
context_windows_size(15,  [512,    "512"]).
context_windows_size(16,  [512,    "512"]).
context_windows_size(17,  [512,    "512"]).
context_windows_size(18,  [512,    "512"]).
context_windows_size(25,  [8000,   "8K"]).
context_windows_size(26,  [128000, "128K"]).
context_windows_size(27,  [128000, "128K"]).
context_windows_size(37,  [32000,  "32K"]).
context_windows_size(38,  [65000,  "65K"]).
context_windows_size(34,  [16000,  "16K"]).
context_windows_size(35,  [128000, "128K"]).
context_windows_size(36,  [200000, "200K"]).



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
 * Price on million tokens
 *
 * pricing VersionId, PriceIn, PriceOut 
 */
pricing(3,  0.27, 1.10).
pricing(4,  0.27, 1.10).
pricing(8,  2.5,  10).
pricing(9,  10,   30).
pricing(10, 8,    24).
pricing(11, 8,    24).
pricing(12, 3,    15).


% pricing_details VersionId, [Details] 
pricing_details(24, [hourMouthPrice(3.3, 10), hourMouthPrice(15, 30), hourMouthPrice(30, 60), hourMouthPrice(60, 120)]).
pricing_details(25, [hourMouthPrice(30, 60), hourMouthPrice(60, 120)]).



/**
 * min_ram VersionId, RAM
 */
min_ram(14, 16).
min_ram(16, 8).
min_ram(18, 4).
min_ram(25, 16).
min_ram(26, 8).
min_ram(27, 256).
min_ram(37, 64).
min_ram(34, 16).
min_ram(35, 16).

/**
 * min_vam VersionId, VRAM
 */
min_vram(14, 2).
min_vram(16, 1).
min_vram(18, 1).
min_vram(25, 4).
min_vram(26, 2).
min_vram(27, 32).
min_vram(37, 16).
min_vram(34, 4).
min_vram(35, 4).


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

% Главный предикат для запуска системы
start :-
    writeln('Добро пожаловать в систему подбора нейросетевых моделей!'),
    writeln('Ответьте на несколько вопросов, и я порекомендую подходящую модель.'),
    nl,
    gather_requirements([]).

% Сбор требований пользователя
gather_requirements(Requirements) :-
    ask_modality(Requirements, NewRequirements),
    ask_deployment(NewRequirements, NewRequirements2),
    ask_availability(NewRequirements2, NewRequirements3),
    ask_context_window(NewRequirements3, NewRequirements4),
    ask_budget(NewRequirements4, FinalRequirements),
    nl,
    recommend_model(FinalRequirements).

% Вопрос о модальности
ask_modality(Requirements, NewRequirements) :-
    nl,
    writeln('Какие типы данных вам нужно обрабатывать?'),
    writeln('1. Только текст'),
    writeln('2. Текст и изображения'),
    writeln('3. Текст, изображения и голос'),
    writeln('4. Другое (указать)'),
    read(ModalityChoice),
    process_modality_choice(ModalityChoice, Modality),
    NewRequirements = [modality(Modality)|Requirements].

process_modality_choice(1, only_texts).
process_modality_choice(2, [texts, images]).
process_modality_choice(3, [texts, images, voice]).
process_modality_choice(4, Other) :-
    write('Укажите нужные модальности через запятую: '),
    read(Other).

% Вопрос о способе развертывания
ask_deployment(Requirements, NewRequirements) :-
    nl,
    writeln('Как вы планируете использовать модель?'),
    writeln('1. В облаке (SaaS)'),
    writeln('2. Локально на своем оборудовании'),
    writeln('3. Не имеет значения'),
    read(DeploymentChoice),
    process_deployment_choice(DeploymentChoice, Deployment),
    NewRequirements = [deployment(Deployment)|Requirements].

process_deployment_choice(1, cloud).
process_deployment_choice(2, local).
process_deployment_choice(3, _).

% Вопрос о доступности
ask_availability(Requirements, NewRequirements) :-
    nl,
    writeln('Какой тип доступа предпочтителен?'),
    writeln('1. Открытый исходный код'),
    writeln('2. Проприетарная (коммерческая)'),
    writeln('3. С ограниченным доступом (waitlist, API ключи)'),
    writeln('4. Не имеет значения'),
    read(AvailabilityChoice),
    process_availability_choice(AvailabilityChoice, Availability),
    NewRequirements = [availability(Availability)|Requirements].

process_availability_choice(1, openSource).
process_availability_choice(2, proprietary).
process_availability_choice(3, limitedAccess).
process_availability_choice(4, _).

% Вопрос о контекстном окне
ask_context_window(Requirements, NewRequirements) :-
    nl,
    writeln('Важно ли вам большое контекстное окно (длина обрабатываемого текста)?'),
    writeln('1. Да, нужно более 100K токенов'),
    writeln('2. Среднее (8K-32K токенов)'),
    writeln('3. Не важно'),
    read(ContextChoice),
    process_context_choice(ContextChoice, ContextWindow),
    (ContextWindow \= none -> 
        NewRequirements = [context_window(ContextWindow)|Requirements];
        NewRequirements = Requirements).

process_context_choice(1, 100000).
process_context_choice(2, 8000).
process_context_choice(3, none).

% Вопрос о бюджете
ask_budget(Requirements, NewRequirements) :-
    nl,
    writeln('Есть ли у вас бюджет на использование модели?'),
    writeln('1. Да, коммерческое использование'),
    writeln('2. Только бесплатные варианты'),
    writeln('3. Не имеет значения'),
    read(BudgetChoice),
    process_budget_choice(BudgetChoice, Budget),
    (Budget \= none -> 
        NewRequirements = [budget(Budget)|Requirements];
        NewRequirements = Requirements).

process_budget_choice(1, commercial).
process_budget_choice(2, free).
process_budget_choice(3, none).

% Рекомендация модели на основе требований
recommend_model(Requirements) :-
    findall(Model-Name, (
        large_model(Model, Name),
        satisfies_all(Model, Requirements)
    ), Models),
    
    (Models = [] ->
        writeln('К сожалению, не найдено моделей, удовлетворяющих вашим требованиям.'),
        writeln('Попробуйте ослабить некоторые критерии.')
    ;
        writeln('Рекомендуемые модели:'),
        print_models(Models),
        nl,
        writeln('Хотите увидеть подробную информацию по какой-либо модели? (y/n)'),
        read(Answer),
        (Answer = 'y' -> 
            ask_model_details(Models)
        ; true)
    ).

% Проверка, что модель удовлетворяет всем требованиям
satisfies_all(Model, Requirements) :-
    forall(
        member(Requirement, Requirements),
        satisfies(Model, Requirement)
    ).

% Правила удовлетворения требований
satisfies(Model, modality(only_texts)) :-
    modality(Model, Modalities),
    Modalities == [texts],
    writeln('Только тексты'), !. % Строго только текст

satisfies(Model, modality([texts, images])) :- % Для случая, когда текст - одна из модальностей
    modality(Model, Modalities),
    Modalities == [texts, images],!.

satisfies(Model, modality(Mod)) :-
    is_list(Mod),
    modality(Model, ModelModalities),
    subset(Mod, ModelModalities), !.

satisfies(Model, deployment(Type)) :-
    deployment(Type, Models),
    member(Model, Models).

satisfies(Model, availability(Type)) :-
    availability(Type, Models),
    member(Model, Models).

satisfies(Model, context_window(Size)) :-
    version(VersionId, Model, _),
    context_windows_size(VersionId, [WindowSize|_]),
    WindowSize >= Size.

satisfies(Model, budget(free)) :-
    \+ (version(VersionId, Model, _), pricing(VersionId, _, _)).

satisfies(_, budget(commercial)). % Все модели подходят, если есть бюджет
satisfies(_, budget(none)). % Не фильтруем по бюджету
satisfies(_, _). % Для неопределенных требований

% Вывод списка моделей
print_models([]).
print_models([Model-Name|Rest]) :-
    format('~w: ~w~n', [Model, Name]),
    print_models(Rest).

% Запрос подробной информации о модели
ask_model_details(Models) :-
    nl,
    writeln('Введите ID модели для подробной информации (0 для выхода):'),
    read(ModelId),
    (ModelId = 0 -> 
        true
    ; 
        (get_assoc(ModelId, Models, Name) ->
            show_model_details(ModelId, Name),
            ask_model_details(Models)
        ;
            writeln('Неверный ID модели. Попробуйте еще раз.'),
            ask_model_details(Models)
        )
    ).

% Отображение подробной информации о модели
show_model_details(ModelId, Name) :-
    nl,
    format('Подробная информация о модели ~w (~w):~n', [Name, ModelId]),
    
    % Основная информация
    description(ModelId, Descriptions),
    writeln('Описание:'),
    print_list(Descriptions),
    
    % Создатели
    createdBy(ModelId, Creators),
    format('Создатель: ~w~n', [Creators]),
    
    % Версии
    findall(Version, version(_, ModelId, Version), Versions),
    writeln('Доступные версии:'),
    print_list(Versions),
    
    % Модальности
    modality(ModelId, Modalities),
    format('Поддерживаемые модальности: ~w~n', [Modalities]),
    
    % Контекстное окно (если есть)
    (version(VersionId, ModelId, _),
     context_windows_size(VersionId, [Size, SizeStr|_]) ->
        format('Размер контекстного окна: ~w (~w)~n', [Size, SizeStr])
    ;
        true
    ),
    
    % Аппаратные требования (если есть)
    (version(VersionId, ModelId, _),
     min_ram(VersionId, RAM) ->
        format('Минимальная RAM: ~w GB~n', [RAM])
    ;
        true
    ),
    
    (version(VersionId, ModelId, _),
     min_vram(VersionId, VRAM) ->
        format('Минимальная VRAM: ~w GB~n', [VRAM])
    ;
        true
    ),
    
    nl.

% Вспомогательный предикат для печати списка
print_list([]).
print_list([H|T]) :-
    writeln(H),
    print_list(T).

% -----