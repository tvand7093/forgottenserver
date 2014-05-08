-- Combat settings
worldType = "pvp"
hotkeyAimbotEnabled = "yes"
protectionLevel = 150
killsToRedSkull = 10
killsToBlackSkull = 50
pzLocked = 25000
removeAmmoWhenUsingDistanceWeapon = "no"
removeChargesFromRunes = "no"
timeToDecreaseFrags = 120000 --24 * 60 * 60 * 1000
whiteSkullTime = 25000 --15 * 60 * 1000
stairJumpExhaustion = 100
experienceByKillingPlayers = "no"

-- Connection Config
ip = "tibia.blackhoefstudios.com"
bindOnlyGlobalAddress = "no"
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = "1000"
motd = "Welcome to Blackhoefstudios Server!"
onePlayerOnlinePerAccount = "no"
allowClones = "no"
serverName = "Ho Bisogno Cibo"
statusTimeout = 60000
replaceKickOnLogin = "yes"
maxPacketsPerSecond = 45

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = 0

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 1000
houseRentPeriod = "never"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 1000

-- Map
mapName = "Evolutions/Evolutions"
mapAuthor = "Komic"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = "yes"
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "tibiauser"
mysqlPass = "ykb90FNEXK$q$cmNp"
mysqlDatabase = "forgottenserver"
mysqlPort = 3306
mysqlSock = ""

-- Misc.
allowChangeOutfit = "yes"
freePremium = "yes"
kickIdlePlayerAfterMinutes = 240
maxMessageBuffer = 8
noDamageToSameLookfeet = "no"
emoteSpells = "no"

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 5
rateSkill = 4
rateLoot = 2
rateMagic = 4
rateSpawn = 2

-- Monsters
deSpawnRange = 2
deSpawnRadius = 1000000

-- Stamina
staminaSystem = "no"

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process priority.
defaultPriority = "high"
startupDatabaseOptimization = "no"

-- Status server information
ownerName = ""
ownerEmail = ""
url = "http://otland.net/"
location = "Sweden"
