//
//  RankingApi.h
//  AppRankingParserDemo
//
//  Created by SOMTD on 2013/08/16.
//  Copyright (c) 2013年 SOMTD. All rights reserved.
//

#import <Foundation/Foundation.h>

//Country
typedef enum ARCountry : NSUInteger {
    UnitedStates,
    Japan,
} ARCountry;

//Audiobooks
typedef enum ARAudiobooks : NSUInteger {
    ARAudiobooksTypeTop,
} ARAudiobooks;

//iOS Apps
typedef enum ARiOSApps : NSUInteger {
    ARiOSAppsTypeTopFree,
    ARiOSAppsTypeTopPaid,
    ARiOSAppsTypeTopGross,
    ARiOSAppsTypeTopFreeiPad,
    ARiOSAppsTypeTopPaidiPad,
    ARiOSAppsTypeTopGrossiPad,
    ARiOSAppsTypeNew,
    ARiOSAppsTypeNewFree,
    ARiOSAppsTypeNewPaid,
} ARiOSApps;

//Movies
typedef enum ARMovies : NSUInteger {
    ARMoviesTypeTop,
    ARMoviesTypeTopRentals,
} ARMovies;

//Music
typedef enum ARMusic : NSUInteger {
    ARMusicTypeTopAlbums,
    ARMusicTypeTopiMixes,
    ARMusicTypeTopSongs,
    //ARMusicTypeNewRelease, //Not json object
    //ARMusicTypeJustAdded,  //Not json object
    //ARMusicTypeFeaturedAlbums, //Not json object
} ARMusic;

//Mac Apps
typedef enum ARMacApps : NSUInteger {
    ARMacAppsTypeTop,
    ARMacAppsTypeTopFree,
    ARMacAppsTypeTopGross,
    ARMacAppsTypeTopPaid,
} ARMacApps;

//Podcasts
typedef enum ARPodcasts : NSUInteger {
    ARPodcastsTypeTop,
} ARPodcasts;

//Books
typedef enum ARBooks : NSUInteger {
    ARBooksTypeTopPaid,
    ARBooksTypeTopFree,
} ARBooks;

//iTunesU
typedef enum ARiTunesU : NSUInteger {
    ARiTunesUTypeTopCollections,
    ARiTunesUTypeTopCourses,
} ARiTunesU;

//TV Shows
typedef enum ARTVShows : NSUInteger {
    ARTVShowsTypeTopTVEpisodes,
    ARTVShowsTypeTopTVSeasons,
} ARTVShows;

//Music Videos
typedef enum ARMusicVideos : NSUInteger {
    ARMusicVideosTypeTopVideos,
} ARMusicVideos;


//Genre
//Audiobooks Genre
typedef enum ARAudiobooksGenre : NSUInteger {
    AudiobooksArtsEntertaiment  = 50000041,
    AudiobooksAudiobooksLatino = 50000070,
    AudiobooksBiographyMemoir  = 50000042,
    AudiobooksBusiness         = 50000043,
    AudiobooksClassics         = 50000045,
    AudiobooksComedy           = 50000046,
    AudiobooksDramePoetry      = 50000047,
    AudiobooksFiction          = 50000040,
    AudiobooksHistory          = 50000049,
    AudiobooksKidsYoungAdults  = 50000044,
    AudiobooksLanguages        = 50000050,
    AudiobooksMystery          = 50000051,
    AudiobooksNews             = 74,
    AudiobooksNonfiction       = 50000052,
    AudiobooksReligionSpiritual= 50000053,
    AudiobooksRomance          = 50000069,
    AudiobooksSciFiFantasy     = 50000055,
    AudiobooksScience          = 50000054,
    AudiobooksSelfDevelopment  = 50000056,
    AudiobooksProgramsPerformance = 75,
    AudiobooksSpeakerStorytellers = 50000048,
    AudiobooksSports              = 50000057,
    AudiobooksTechnology          = 50000058,
    AudiobooksTravelAdventure  = 50000059,
    
} ARAudiobooksGenre;

//iOS Apps Genre
typedef enum ARiOSAppsGenre : NSUInteger {
    iOSAppsBooks               = 6018,
    iOSAppsBusiness            = 6000,
    iOSAppsCatalogs            = 6022,
    iOSAppsEducation           = 6017,
    iOSAppsEntertaiment        = 6016,
    iOSAppsFinance             = 6015,
    iOSAppsFoodDrink           = 6023,
    iOSAppsGames               = 6014,
    iOSAppsHealthFitness       = 6013,
    iOSAppsLifeStyle           = 6012,
    iOSAppsMedical             = 6020,
    iOSAppsMusic               = 6011,
    iOSAppsNavigation          = 6010,
    iOSAppsNews                = 6009,
    iOSAppsNewsstand           = 6021,
    iOSAppsPhotoVideo          = 6008,
    iOSAppsProductivity        = 6007,
    iOSAppsReference           = 6006,
    iOSAppsSocialNetworking    = 6005,
    iOSAppsSports              = 6004,
    iOSAppsTravel              = 6003,
    iOSAppsUtilities           = 6002,
    iOSAppsWeather             = 6001,
    
} ARiOSAppsGenre;

//Movies Genre
typedef enum ARMoviesGenre : NSUInteger {
    MoviesActionAdventure      = 4401,
    MoviesAfrican              = 4434,
    MoviesAnime                = 4402,
    MoviesBollywood            = 4431,
    MoviesClassics             = 4403,
    MoviesComedy               = 4404,
    MoviesConcertFilms         = 4422,
    MoviesDocumentary          = 4405,
    MoviesDrama                = 4406,
    MoviesForeign              = 4407,
    MoviesHorror               = 4408,
    MoviesIndependent          = 4409,
    MoviesJapaneseCinema       = 4425,
    MoviesJidaigeki            = 4426,
    MoviesKidsFamily           = 4410,
    MoviesKoreanCinema         = 4428,
    MoviesMadeForTV            = 4421,
    MoviesMiddleEastern        = 4433,
    MoviesMusicDocumentaries   = 4423,
    MoviesMusicFeatureFilms    = 4424,
    MoviesMusicals             = 4411,
    MoviesRegionalIndian       = 4432,
    MoviesRomance              = 4412,
    MoviesRussian              = 4429,
    MoviesSciFiFantasy         = 4413,
    MoviesShortFilms           = 4414,
    MoviesSpecialInterest      = 4415,
    MoviesSports               = 4417,
    MoviesThriller             = 4416,
    MoviesTokusatsu            = 4427,
    MoviesTurkish              = 4430,
    MoviesUrban                = 4419,
    MoviesWestern              = 4418,
    
} ARMoviesGenre;

//Music Genre
typedef enum ARMusicGenre : NSUInteger {
    MusicAlternative           = 20,
    MusicAnime                 = 29,
    MusicBlues                 = 2,
    MusicBrazilian             = 1122,
    MusicChildrensMusic        = 4,
    MusicChinese               = 1232,
    MusicChristianGospel       = 22,
    MusicClassical             = 5,
    MusicComedy                = 3,
    MusicCountry               = 6,
    MusicDance                 = 17,
    MusicDisney                = 50000063,
    MusicEasyListening         = 25,
    MusicElectronic            = 7,
    MusicEnka                  = 28,
    MusicFitnessWorkout        = 50,
    MusicFrenchPop             = 50000064,
    MusicGermanFolk            = 50000068,
    MusicGermanPop             = 50000066,
    MusicHipHopRap             = 18,
    MusicHoliday               = 8,
    MusicIndian                = 1262,
    MusicInstrumental          = 53,
    MusicJpop                  = 27,
    MusicJazz                  = 11,
    MusicKpop                  = 51,
    MusicKaraoke               = 52,
    MusicKayokyoku             = 30,
    MusicKorean                = 1243,
    MusicLatino                = 12,
    MusicNewAge                = 13,
    MusicOpera                 = 9,
    MusicPop                   = 14,
    MusicRBSoul                = 15,
    MusicReggae                = 24,
    MusicRock                  = 21,
    MusicSingerSongwriter      = 10,
    MusicSoundtrack            = 16,
    MusicSpokenWord            = 50000061,
    MusicVocal                 = 23,
    MusicWorld                 = 19,

} ARMusicGenre;

//Mac Apps Genre
typedef enum ARMacAppsGenre : NSUInteger {
    MacAppsBusiness            =12001,
    MacAppsDeveloperTools      =12002,
    MacAppsEducation           =12003,
    MacAppsEntertaiment        =12004,
    MacAppsFinance             =12005,
    MacAppsGames               =12006,
    MacAppsGraphicsDesign      =12022,
    MacAppsHealthFitness       =12007,
    MacAppsLifestyle           =12008,
    MacAppsMedical             =12010,
    MacAppsMusic               =12011,
    MacAppsNews                =12012,
    MacAppsPhotography         =12013,
    MacAppsProductivity        =12014,
    MacAppsReference           =12015,
    MacAppsSocialNetworking    =12016,
    MacAppsSports              =12017,
    MacAppsTravel              =12018,
    MacAppsUtilities           =12019,
    MacAppsVideo               =12020,
    MacAppsWeather             =12021,
} ARMacAppsGenre;

//Podcasts Genre
typedef enum ARPodcastsGenre : NSUInteger {
    PodcastsArts               =1301,
    PodcastsBusiness           =1321,
    PodcastsComedy             =1303,
    PodcastsEducation          =1304,
    PodcastsGameHobbies        =1323,
    PodcastsGovernmentOrgnizations =1325,
    PodcastsHealth             =1307,
    PodcastsKidsFamily         =1305,
    PodcastsMusic              =1310,
    PodcastsNewsPolitics       =1311,
    PodcastsReligionSpirtuality=1314,
    PodcastsScienceMedicine    =1315,
    PodcastsSocietyCulture     =1324,
    PodcastsSportsRecreation   =1316,
    PodcastsTVFilm             =1309,
    PodcastsTechnology         =1318,

} ARPodcastsGenre;

//Books Genre
typedef enum ARBooksGenre : NSUInteger {
    BooksArtsEntertainment     = 9007,
    BooksBiographiesMemoirs    = 9008,
    BooksBusinessPersonalFinance= 9009,
    BooksChildrenTeens         = 9010,
    BooksComicsGraphicNovels   = 9026,
    BooksComputersInternet     = 9027,
    BooksCookbooksFoodWine     = 9028,
    BooksFictionLiterature     = 9031,
    BooksHealthMindBody        = 9025,
    BooksHistory               = 9015,
    BooksHumor                 = 9012,
    BooksLifestyleHome         = 9024,
    BooksMysteriesThrillers    = 9032,
    BooksNonfiction            = 9002,
    BooksParenting             = 9030,
    BooksPoliticsCurrentEvents = 9034,
    BooksProfessionalTechnical = 9029,
    BooksReference             = 9033,
    BooksReligionSpirtuality   = 9018,
    BooksRomance               = 9003,
    BooksSciFiFantasy          = 9020,
    BooksScienceNature         = 9019,
    BooksSportsOutdoors        = 9035,
    BooksTravelAdventure       = 9004,
    
} ARBooksGenre;

//iTunesU Genre
typedef enum ARiTunesUGenre : NSUInteger {
    iTunesUArtsArchitecture    = 40000016,
    iTunesUBusiness            = 40000001,
    iTunesUCommunicationsMedia = 40000053,
    iTunesUEngineering         = 40000009,
    iTunesUHealthMedicine      = 40000026,
    iTunesUHistory             = 40000041,
    iTunesULanguage            = 40000056,
    iTunesULawPolitics         = 40000140,
    iTunesULiterature          = 40000070,
    iTunesUMathmatics          = 40000077,
    iTunesUPhilosophy          = 40000054,
    iTunesUPsycologySocialScience= 40000094,
    iTunesUReligionSpirituality= 40000055,
    iTunesUScience             = 40000084,
    iTunesUSociety             = 40000101,
    iTunesUTechnologyLearning  = 40000109,
    
} ARiTunesUGenre;

//TV Shows Genre
typedef enum ARTVShowsGenre : NSUInteger {
    TVShowsActionAdventure     = 4003,
    TVShowsAnimation           = 4002,
    TVShowsClassic             = 4004,
    TVShowsComedy              = 4000,
    TVShowsDrama               = 4001,
    TVShowsKids                = 4005,
    TVShowsLatinoTV            = 4011,
    TVShowsNonfiction          = 4006,
    TVShowsRealityTV           = 4007,
    TVShowsSciFiFantasy        = 4008,
    TVShowsSports              = 4009,
    TVShowsTeens               = 4010,

} ARTVShowsGenre;

//Music Videos Genre
typedef enum ARMusicVideosGenre : NSUInteger {
    MusicVideosAlternative     = 1620,
    MusicVideosAnime           = 1629,
    MusicVideosBigBand         = 1685,
    MusicVideosBlues           = 1602,
    MusicVideosBrazilian       = 1671,
    MusicVideosChildrensMusic  = 1604,
    MusicVideosChinese         = 1637,
    MusicVideosChristianGospel = 1622,
    MusicVideosClassical       = 1605,
    MusicVideosComedy          = 1603,
    MusicVideosCountry         = 1606,
    MusicVideosDance           = 1617,
    MusicVideosDisney          = 1631,
    MusicVideosEasyListening   = 1625,
    MusicVideosElectronic      = 1607,
    MusicVideosEnka            = 1628,
    MusicVideosFitnessWorkout  = 1683,
    MusicVideosFrenchPop       = 1632,
    MusicVideosGermanFolk      = 1634,
    MusicVideosGermanPop       = 1633,
    MusicVideosHipHopRap       = 1618,
    MusicVideosHoliday         = 1608,
    MusicVideosIndian          = 1690,
    MusicVideosInstrumental    = 1684,
    MusicVideosJpop            = 1627,
    MusicVideosJazz            = 1611,
    MusicVideosKpop            = 1686,
    MusicVideosKaraoke         = 1687,
    MusicVideosKayokyoku       = 1630,
    MusicVideosKorean          = 1648,
    MusicVideosLatino          = 1612,
    MusicVideosNewAge          = 1613,
    MusicVideosOpera           = 1609,
    MusicVideosPodcasts        = 1626,
    MusicVideosPop             = 1614,
    MusicVideosRBSoul          = 1615,
    MusicVideosReggae          = 1624,
    MusicVideosRock            = 1621,
    MusicVideosSingerSongwriter= 1610,
    MusicVideosSoundtrack      = 1616,
    MusicVideosSpokenWord      = 1689,
    MusicVideosVocal           = 1623,
    MusicVideosWorld           = 1619,
    
} ARMusicVideosGenre;

@interface RankingApi : NSObject

+ (void)getAudiobooksRankingWithCountry:(ARCountry)country
                               feedType:(ARAudiobooks)feedType
                                  genre:(ARAudiobooksGenre)genre
                                  limit:(int)limit
                                handler:(void (^)(id response, NSError *error))handler;

+ (void)getiOSAppsRankingWithCountry:(ARCountry)country
                            feedType:(ARiOSApps)feedType
                               genre:(ARiOSAppsGenre)genre
                               limit:(int)limit
                             handler:(void (^)(id response, NSError *error))handler;

+ (void)getMoviesRankingWithCountry:(ARCountry)country
                           feedType:(ARMovies)feedType
                              genre:(ARMoviesGenre)genre
                              limit:(int)limit
                            handler:(void (^)(id response, NSError *error))handler;

+ (void)getMusicRankingWithCountry:(ARCountry)country
                          feedType:(ARMusic)feedType
                             genre:(ARMusicGenre)genre
                             limit:(int)limit
                           handler:(void (^)(id response, NSError *error))handler;

+ (void)getMacAppsRankingWithCountry:(ARCountry)country
                            feedType:(ARMacApps)feedType
                               genre:(ARMacAppsGenre)genre
                               limit:(int)limit
                             handler:(void (^)(id response, NSError *error))handler;

+ (void)getPodcastsRankingWithCountry:(ARCountry)country
                             feedType:(ARPodcasts)feedType
                                genre:(ARPodcastsGenre)genre
                                limit:(int)limit
                              handler:(void (^)(id response, NSError *error))handler;

+ (void)getBooksRankingWithCountry:(ARCountry)country
                          feedType:(ARBooks)feedType
                             genre:(ARBooksGenre)genre
                             limit:(int)limit
                           handler:(void (^)(id response, NSError *error))handler;

+ (void)getiTunesURankingWithCountry:(ARCountry)country
                            feedType:(ARiTunesU)feedType
                               genre:(ARiTunesUGenre)genre
                               limit:(int)limit
                             handler:(void (^)(id response, NSError *error))handler;

+ (void)getTVShowsRankingWithCountry:(ARCountry)country
                            feedType:(ARTVShows)feedType
                               genre:(ARTVShowsGenre)genre
                               limit:(int)limit
                             handler:(void (^)(id response, NSError *error))handler;

+ (void)getMusicVideosRankingWithCountry:(ARCountry)country
                                feedType:(ARMusicVideos)feedType
                                   genre:(ARMusicVideosGenre)genre
                                   limit:(int)limit
                                 handler:(void (^)(id response, NSError *error))handler;
@end
