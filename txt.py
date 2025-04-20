# подключаем колаб к нашему гугл-диску
from google.colab import drive
drive.mount('/content/drive')

# устанавливаем рабочую директорию/каталог
import os

path = "/content/drive/My Drive/нейросети/"
os.chdir(path)
print(os.listdir())

import pandas as pd

# csv_path = 'dollar_prepared.csv'
csv_path = path + 'dollar-9.csv'
raw_data = pd.read_csv(csv_path, sep=';')

# преобразуем даты из строкового типа в тип дата-время

raw_data['datetime'] = pd.to_datetime(raw_data['datetime'], format='%d.%m.%Y')

raw_data.head()

# преобразуем данные из текстовых в числовые: предварительно заменив ',' на '.'

raw_data['dollar'] = raw_data['dollar'].str.replace(',', '.')
raw_data['dollar'] = pd.to_numeric(raw_data['dollar'], errors='coerce')
raw_data.info()

# устанавливаем дату в качестве индекса для таблицы

raw_data.set_index('datetime')

raw_data.sort_index()

raw_data.info()

# добавляем пропущенные дни;
full_date_range = pd.date_range(start=raw_data['datetime'].min(), end=raw_data['datetime'].max(), freq='D')

dseries = pd.merge(pd.DataFrame({'datetime': full_date_range}),
                  raw_data,
                  on='datetime',
                  how='left')
print(f"Пропущенных значений до заполнения: {raw_data['dollar'].isna().sum()}")
dseries.info()

# заполняем пропуски с помощью интерполции
from scipy.interpolate import Akima1DInterpolator

# Удаляем пропуски перед интерполяцией
known_points = dseries.dropna()
akima = Akima1DInterpolator(known_points['datetime'].astype('int64'), known_points['dollar'])
dseries['dollar'] = akima(dseries['datetime'].astype('int64'))

dseries.describe()

data = pd.DataFrame(dseries)


# устанавливаем дату в качестве индекса для таблицы

data.set_index('datetime')

data.sort_index()

data.info()

from sktime.split import temporal_train_test_split

# Разделение на обучающую и тестовую выборки
train, test = temporal_train_test_split(data, test_size=36)
fh = ForecastingHorizon(test.index, is_relative=False)

train.set_index('datetime')

train.sort_index()

train.info()

from sktime.transformations.series.detrend import Detrender
from sktime.transformations.series.detrend import Deseasonalizer

pipe_safe = TransformedTargetForecaster([
    ("deseasonalize", Deseasonalizer(sp=7)),
    ("detrend", Detrender()),
    ("forecast", AutoETS())
])

pipe_ets.fit(train)
pred = pipe_ets.predict(fh)
print("Предсказания:", pred)

