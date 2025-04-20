
| Модель | Название     |
| ------ | ------------ |
| 1      | DeepSeek     |
| 2      | ChatGPT      |
| 3      | Claude       |
| 4      | Bert         |
| 5      | Midjourney   |
| 6      | Mistral      |
| 7      | Dall-e       |
| 8      | Bard         |
| 9      | LLaMA        |
| 10     | DeepFloyd IF |

| Модель       | Доступность               |
| ------------ | ------------------------- |
| DeepSeek     | Частично доступная        |
| ChatGPT      | Проприетарная             |
| Claude       | Проприетарная             |
| Bert         | С открытым исходным кодом |
| Midjourney   | Проприетарная             |
| Mistral      | С открытым исходным кодом |
| Dall-e       | Проприетарная             |
| Bard         | Ограниченный доступ       |
| LLaMA        | С открытым исходным кодом |
| DeepFloyd IF | С открытым исходным кодом |

| Модель       | Использование       |
| ------------ | ------------------- |
| DeepSeek     | Облачное, Локальное |
| ChatGPT      | Облачное            |
| Claude       | Облачное            |
| Bert         | Локальное           |
| Midjourney   | Облачное            |
| Mistral      | Локальное           |
| Dall-e       | Облачное            |
| Bard         | Облачное            |
| LLaMA        | Локальное           |
| DeepFloyd IF | Локальное           |

| Модель       | Модальность                           |
| ------------ | ------------------------------------- |
| DeepSeek     | Тексты, Документы, Таблицы            |
| ChatGPT      | Тексты, Документы, Изображения, Голос |
| Claude       | Тексты, Документы, Изображения        |
| Bert         | Тексты                                |
| Midjourney   | Тексты, Изображения                   |
| Mistral      | Тексты                                |
| Dall-e       | Тексты, Изображения                   |
| Bard         | Тексты                                |
| LLaMA        | Тексты                                |
| DeepFloyd IF | Тексты, Изображения                   |

| Модель       | Размер контекстных окон |
| ------------ | ----------------------- |
| DeepSeek     | Очень большой           |
| ChatGPT      | Очень большой           |
| Claude       | Очень большой           |
| Bert         | Малый                   |
| Midjourney   | Не применимо            |
| Mistral      | Большой                 |
| Dall-e       | Не применимо            |
| Bard         | Очень большой           |
| LLaMA        | Большой                 |
| DeepFloyd IF | Не применимо            |

| Модель       | Категория нейросетей               |
| ------------ | ---------------------------------- |
| DeepSeek     | Крупная, Очень крупная, Гигантская |
| ChatGPT      | Крупная, Очень крупная, Гигантская |
| Claude       | Очень крупная, Гигантская          |
| Bert         | Средняя                            |
| Midjourney   | Очень крупная                      |
| Mistral      | Крупная, Очень крупная             |
| Dall-e       | Очень крупная                      |
| Bard         | Очень крупная                      |
| LLaMA        | Крупная, Очень крупная             |
| DeepFloyd IF | Гигантская                         |

| Модель       | Решаемая задача                    |
| ------------ | ---------------------------------- |
| DeepSeek     | Генерация текста, Понимание текста |
| ChatGPT      | Генерация текста, Понимание текста |
| Claude       | Генерация текста, Понимание текста |
| Bert         | Понимание текста                   |
| Midjourney   | Генерация изображений              |
| Mistral      | Генерация текста, Понимание текста |
| Dall-e       | Генерация изображений              |
| Bard         | Генерация текста, Понимание текста |
| LLaMA        | Генерация текста, Понимание текста |
| DeepFloyd IF | Генерация изображений              |

frame: DeepSeek
availability: limitedAccess
deployment: Local, Cloud
modality: Texts, Documents, Tables
context_window_size: Very large
model_size: Large, Very large, Giant
tasks: Texts generation, Text understanding

frame: ChatGPT
availability: proprietary
deployment: Cloud
modality: Texts, Documents, Images, Voice
context_window_size: Very large
model_size: Large, Very large, Giant
tasks: Texts generation, Text understanding

frame: Claude
availability: proprietary
deployment: Cloud
modality: Texts, Documents, Images
context_window_size: Very large
model_size: Very large, Giant
tasks: Texts generation, Text understanding

frame: Bert
availability: openSource
deployment: Local
modality: Texts
context_window_size: Small
model_size: Midle
tasks: Text understanding

frame: Midjourney
availability: proprietary
deployment: Cloud
modality: Texts, Images
model_size: Very large
tasks: Image generation

frame: Mistral
availability: open Source
deployment: Local
modality: Texts
context_window_size: Large
model_size: Large, Very large
tasks: Texts generation, Text understanding

frame: Dall-e
availability: proprietary
deployment: Cloud
modality: Texts, Images
model_size: Very large
tasks: Image generation

frame: Bard
availability: limitedAccess
deployment: Cloud
modality: Texts, Documents
context_window_size: Very Large
model_size: Very large
tasks: Texts generation, Text understanding

frame: LLaMA
availability: Open Source
deployment: Local
modality: Texts
context_window_size: Large
model_size: Large, Very large
tasks: Texts generation, Text understanding

frame: DeepFloyd IF
availability: Open Source
deployment: Local
modality: Texts, Images
model_size: Giant
tasks: Image generation

frame: LargeModel
availability: proprietary
deployment: Cloud
modality: Texts, Documents
context_window_size: Very large
model_size: Large, Very large, Giant
tasks: Texts generation, Text understanding

frame: ImageGenerator
availability: proprietary
deployment: Cloud
modality: Texts, Images
model_size: Very large
tasks: Image generation
