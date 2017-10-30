-- | Основные константы
module Const where

import Type

-----------------------------------------
-- * Константы, общие параметры игры
-----------------------------------------

-- | Экран
-- | Ширина экрана
screenWidth :: Int
screenWidth = 800
 
-- | Высота экрана
screenHeight :: Int
screenHeight = 450

-- | Положение правого края экрана
screenRight :: Offset
screenRight = fromIntegral screenWidth / 2
 
-- | Положение левого края экрана
screenLeft :: Offset
screenLeft = - fromIntegral screenWidth / 2

-- | Положение верхнего края экрана
screenTop :: Height
screenTop = fromIntegral screenHeight / 2

-- | Положение нижнего края экрана
screenBottom :: Height
screenBottom = - fromIntegral screenHeight / 2

-- | Скорость фона
backgroundSpeed:: Speed
backgroundSpeed = 20

-- | Размер фона
backgroundPictureSizeWidth :: Offset
backgroundPictureSizeWidth = 5000

-- | Изначальная скорость движения игрока по вселенной - абсолютное изменение
gameSpeed :: Speed
gameSpeed = 100

-- | Величина ускорения игры
speedIncrease :: Speed
speedIncrease = 0.1
<<<<<<< HEAD

-- | Корова
-- | Размер коровы
defaultCowSize :: Size
defaultCowSize = 1.0

-- | Мзменение высоты коровы при нажатии на клавиши (в пикселях)
cowSpeed :: Float
cowSpeed = 200

cowAngelDefault :: Float
cowAngelDefault = -100

maxAngle :: Float
maxAngle = 10

minAngle :: Float
minAngle = -10

-- | Положение коровы по горизонтали
cowInitOffset :: Offset
cowInitOffset = screenLeft + (fromIntegral screenWidth / 10)

-- | Положение коровы по вертикали
cowInitHeight :: Height
cowInitHeight = 0

-- | Ширина картинки коровы
cowPictureSizeWidth :: Cow -> Size
cowPictureSizeWidth _ = 133

-- | Высота картинки коровы
cowPictureSizeHeight :: Cow -> Size
cowPictureSizeHeight _ = 68

defaultCollapseTime :: Float
defaultCollapseTime = 200

-- | Конфигурация босса
bossPictureWidth :: Boss -> Size
bossPictureWidth _ = 170

bossPictureHeight :: Boss -> Size
bossPictureHeight _ = 170

bossSpeed :: Boss -> Float
bossSpeed _ = 70

bossTimer :: Int
bossTimer = 1000

bombSpeed :: Float
bombSpeed = 200

defaultBombSize :: Size
defaultBombSize = 1.0

bombTimer :: Int
bombTimer = 60

bossTitleTimer :: Int
bossTitleTimer = 50

defaultStoneSize :: Size
defaultStoneSize = 1.0

stoneSpeed :: Float
stoneSpeed = 120

stoneAppearenceTime :: Int
stoneAppearenceTime = 600
=======
>>>>>>> LevelGeneration
