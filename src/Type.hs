-- | Основные типы данных
module Type where

import Graphics.Gloss.Interface.Pure.Game

--------------------------------------------------
-- * Основные общие типы, используемые в игре
--------------------------------------------------

-- | Высота (координата Х)
type Height   = Float     

-- | Ширина (Координата Y)
type Offset   = Float 

-- | Координаты обьекта в пространстве
type Position = (Offset,Height)

-- | Жизни
type Life     = Int              

-- | Счет
type Score    = Int              

-- | Размер
type Size     = Float            

-- | Скорость
type Speed    = Float            

-- | Картинка заднего фона
data BackgroundPicture = BackgroundPicture 
  { backgroundPicturePosition :: Position -- ^ Положение картинки 
  }

-- | Фон
data Background = Background
  { mapBackgroundPicture   :: [BackgroundPicture] -- ^ Множество картинок, составляющих фон
  , backgroundPictureSpeed :: Speed               -- ^ Скорость движения фона
  }

-- | Босс
data Boss = Boss    
  { bossHealth   :: Life   -- ^ Жизни 
  , bossDamage   :: Float  -- ^ Урон
  , bossHardness :: Float  -- ^ Сложность
  }

-- | Режим игры
data Mode = BossMode Boss       -- ^ Режим Босса
          | NightmareMode Float -- ^ Режим без бонусов и клеверов
          | OrdinaryMode Float  -- ^ Обычный режим
          | NoBonusMode Float   -- ^ Режим без бонусов

-- | Изображения объектов игровой вселенной
data Images = Images
  { imageCow             :: Picture   -- ^ Изображение коровы
  , imageCowBlurred      :: Picture   -- ^ Изображение размытой коровы
  , imageClover          :: Picture   -- ^ Изображение клевера
<<<<<<< HEAD
  , imageGoodBirdUp      :: Picture   -- ^ Изображение GrayBirdUp.
  , imageGoodBirdDown    :: Picture   -- ^ Изображение GrayBirdDown.
  , imageBadBirdUp       :: Picture   -- ^ Изображение BlueBirdUp.
  , imageBadBirdDown     :: Picture   -- ^ Изображение BlueBirdDown.
  , imageSkyWithGrass    :: Picture   -- ^ Изображение Неба.
  , imageGameOver        :: Picture   -- ^ Изображение конца игры.
  , imageDonut           :: Picture
  , imageDonutStar       :: Picture
  , imageFasterStar      :: Picture
  , imageInvincibleStar  :: Picture
  , imageRandomStar      :: Picture
  , imageEnlargeStar     :: Picture
  , imageBoss            :: Picture
  , imageBomb            :: Picture
  , imageBossTitle       :: Picture
  , imageStone           :: Picture
  }


-- | Реализация класса типов - препятствие
class Obstacle o where
  -- | Получение позиции препятствия
  getPosition :: o -> Position
  -- | Получние размера препятствия
  getSize :: o -> Size
  -- | Установка позиции препятствия
  setPosition :: o -> Position -> o
  -- | Установка размера препятствия
  setSize :: o -> Size -> o
  -- | Высота рисунка препятствия
  getHeight :: o -> Size
  -- | Ширина рисунка препятствия
  getWidth :: o -> Size
  
  
  
-- | Препятствие - клевер
instance Obstacle Clover where
    getPosition = cloverPosition

    getSize = cloverSize

    setPosition clover position = clover { cloverPosition = position }

    setSize clover size = clover { cloverSize = size }

    getHeight _ = 50

    getWidth _ = 50

instance Obstacle BonusItem where
    getPosition = bonusItemPosition

    getSize = bonusItemSize

    setPosition bonusItem position = bonusItem { bonusItemPosition = position }

    setSize bonusItem size = bonusItem { bonusItemSize = size }

    getHeight _ = 68

    getWidth _ = 68

-- | Препятствие - плохая птичка
instance Obstacle BadBird where
  getPosition = badBirdPosition

  getSize = badBirdSize

  setPosition badBird position = badBird { badBirdPosition = position }

  setSize badBird size = badBird { badBirdSize = size }

  getWidth _ = 81

  getHeight _ = 42

-- | Препятствие - хорошая птичка
instance Obstacle GoodBird where
  getPosition = goodBirdPosition

  getSize = goodBirdSize

  setPosition goodBird position = goodBird { goodBirdPosition = position }

  setSize goodBird size = goodBird { goodBirdSize = size }

  getWidth _ = 67

  getHeight _ = 36

instance Obstacle Donut where
  getPosition = donutPosition

  getSize = donutSize

  setPosition donut position = donut { donutPosition = position }

  setSize donut size = donut { donutSize = size }

  getWidth _ = 67

  getHeight _ = 36

instance Obstacle Bomb where
  getPosition = bombPosition

  getSize = bombSize

  setPosition bomb position = bomb { bombPosition = position }

  setSize bomb size = bomb { bombSize = size }

  getWidth _ = 40

  getHeight _ = 40

instance Obstacle Stone where
  getPosition = stonePosition

  getSize = stoneSize

  setPosition stone position = stone { stonePosition = position }

  setSize stone size = stone { stoneSize = size }

  getWidth _ = 120

  getHeight _ = 80
=======
  , imageGoodBirdUp      :: Picture   -- ^ Изображение Хорошей птички 
  , imageGoodBirdDown    :: Picture   -- ^ Изображение Хорошей птички 2
  , imageBadBirdUp       :: Picture   -- ^ Изображение Плохой птички
  , imageBadBirdDown     :: Picture   -- ^ Изображение Плохой птички
  , imageSkyWithGrass    :: Picture   -- ^ Изображение Неба
  , imageGameOver        :: Picture   -- ^ Изображение конца игры
  , imageDonut           :: Picture   -- ^ Изображение пончика
  , imageDonutStar       :: Picture   -- ^ Изображение бонуса, пончикового бластера
  , imageFasterStar      :: Picture   -- ^ Изображение бонуса, ускорителя
  , imageInvincibleStar  :: Picture   -- ^ Изображение бонуса, неуязвимости
  , imageRandomStar      :: Picture   -- ^ Изображение случайного бонуса
  , imageEnlargeStar     :: Picture   -- ^ Изображение бонуса, увеличения
  }
>>>>>>> LevelGeneration
