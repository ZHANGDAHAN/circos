#!/usr/bin/perl

use strict;
use warnings;
no  warnings 'syntax';

use Regexp::Common;
use Test::More;
use t::zip::Zip;

my $r = eval "require Test::Regexp; 1";

unless ($r) {
    print "1..0 # SKIP Test::Regexp not found\n";
    exit;
}


test_zips country         =>  "Italy",
          name            =>  "Italian zip codes",
          prefix          => {
              iso         =>  "IT",
              cept        =>  "I",
              invalid     =>  "DE",
          },
          prefix_test_set => [19100, 83020],
;


done_testing;


sub valid_zip_codes {
    map {sprintf "%05d" => $_}
       10 ..    13,      15,               17 ..    55,      57 ..    63,
       65 ..    69,     119 ..   128,     131 ..   139,     141 ..   149,
      151 ..   159,     161 ..   169,     171 ..   179,     181 ..   189,
      191 ..   199,    1010 ..  1012,    1014 ..  1028,    1030,
     1032 ..  1039,    1100,             2010 ..  2016,    2018 ..  2026,
     2028,             2030 ..  2035,    2037 ..  2049,    2100,
     3010 ..  3014,    3016 ..  3049,    3100,             4010 ..  4029,
     4100,             5010 ..  5018,    5020 ..  5026,    5028 ..  5032,
     5034 ..  5035,    5039,    5100,    6010,    6012,    6014,    6016,
     6018 ..  6031,    6033 ..  6036,    6038 ..  6047,    6049 ..  6051,
     6053 ..  6057,    6059 ..  6066,    6068 ..  6070,    6072 ..  6073,
     6081,             6083 ..  6084,    6089,    6100,    6121 ..  6129,
     6131 ..  6132,    6134,             7010 ..  7041,    7043 ..  7049,
     7100,             8010 ..  8013,    8015 ..  8040,    8042 ..  8049,
     8100,             9010 ..  9045,    9047 ..  9049,    9070 ..  9086,
     9088,             9090 ..  9100,    9121 ..  9129,    9131,    9134,
     9170,

    10010 .. 10020,   10022 .. 10026,   10028 .. 10032,   10034 .. 10038,
    10040 .. 10046,   10048,            10050 .. 10078,   10080 .. 10088,
    10090 .. 10095,   10098 .. 10100,   10121 .. 10129,   10131 .. 10139,
    10141 .. 10149,   10151 .. 10156,   11010 .. 11018,   11020 .. 11029,
    11100,            12010 .. 12056,   12058,            12060 .. 12066,
    12068 .. 12084,   12087 .. 12089,   12100,            13010 .. 13012,
    13017 .. 13028,   13030 .. 13041,   13043 .. 13049,   13060,   13100,
    13811 .. 13812,   13814 .. 13818,   13821 .. 13825,   13831,
    13833 .. 13836,   13841,            13843 .. 13845,   13847 .. 13848,
    13851 .. 13856,   13861 .. 13868,   13871 .. 13878,   13881 .. 13888,
    13891,            13893 .. 13900,   14010 .. 14026,   14030 .. 14037,
    14039 .. 14055,   14057 .. 14059,   14100,            15010 .. 15036,
    15038 .. 15046,   15048 .. 15079,   15100,            16010 .. 16036,
    16038 .. 16049,   16100,            16121 .. 16129,   16131 .. 16139,
    16141 .. 16149,   16151 .. 16159,   16161 .. 16167,   17010 .. 17015,
    17017,            17019 .. 17028,   17030 .. 17035,   17037 .. 17048,
    17051 .. 17058,   17100,            18010 .. 18027,   18030 .. 18039,
    18100,            19010 .. 19018,   19020 .. 19021,   19025,   19028,
    19030 .. 19034,   19037 .. 19038,   19100,            19121 .. 19126,
    19131 .. 19139,

    20010 .. 20030,   20032,   20037,   20040,   20056,   20060 .. 20070,
    20077 .. 20078,   20080 .. 20099,   20121 .. 20129,   20131 .. 20139,
    20141 .. 20149,   20151 .. 20159,   20161 .. 20162,   20811 .. 20816,
    20821 .. 20826,   20831 .. 20838,   20841 .. 20847,   20851 .. 20857,
    20861 .. 20867,   20871 .. 20877,   20881 .. 20886,   20900,
    21010 .. 21059,   21100,            22010 .. 22040,   22044 .. 22046,
    22060,   22063,   22066,            22069 .. 22079,   22100,
    23010 .. 23027,   23029 .. 23038,   23100,            23801 .. 23802,
    23804 .. 23808,   23811,            23813 .. 23819,   23821 .. 23829,
    23831 .. 23838,   23841 .. 23849,   23851 .. 23852,   23854 .. 23855,
    23857,            23861 .. 23862,   23864 .. 23865,   23867 .. 23868,
    23870 .. 23871,   23873 .. 23881,   23883 .. 23900,   24010 .. 24031,
    24033 .. 24069,   24100,            24121 .. 24129,   25010 .. 25065,
    25068 .. 25089,   25100,            25121 .. 25129,   25131 .. 25136,
    26010 .. 26049,   26100,            26811 .. 26818,   26821 .. 26828,
    26831 .. 26839,   26841 .. 26849,   26851 .. 26859,   26861 .. 26867,
    26900,            27010 .. 27055,   27057 .. 27059,   27100,
    28010 .. 28017,   28019,   28021,   28024,   28028,   28040 .. 28041,
    28043,            28045 .. 28047,   28050,   28053,   28060 .. 28062,
    28064 .. 28066,   28068 .. 28079,   28100,            28801 .. 28805,
    28811 .. 28819,   28821 .. 28828,   28831 .. 28833,   28836,   28838,
    28841 .. 28845,   28851 .. 28859,   28861 .. 28866,   28868,   28871,
    28873,            28875 .. 28877,   28879,   28881,   28883 .. 28887,
    28891,            28893 .. 28899,   28922,            29010 .. 29029,
    29100,

    30010,            30013 .. 30016,   30020 .. 30039,   30100,
    30121 .. 30126,   30131 .. 30133,   30135,            30141 .. 30142,
    30170 .. 30175,   31010 .. 31018,   31020 .. 31059,   31100,   32010,
    32012 .. 32016,   32020 .. 32022,   32026 .. 32028,   32030 .. 32037,
    32040 .. 32047,   32100,            33010 .. 33011,   33013,
    33015 .. 33059,   33070,   33072,   33074 .. 33087,   33090,   33092,
    33094 .. 33095,   33097 .. 33100,   33170,            34010 .. 34012,
    34014 .. 34018,   34070 .. 34079,   34100,            34121 .. 34129,
    34131 .. 34139,   34141 .. 34149,   34151,   34170,   35010 .. 35032,
    35034 .. 35038,   35040 .. 35048,   35100,            35121 .. 35129,
    35131 .. 35139,   35141 .. 35143,   36010 .. 36016,   36020 .. 36028,
    36030 .. 36036,   36040,            36042 .. 36043,   36045 .. 36047,
    36050 .. 36057,   36060 .. 36066,   36070 .. 36073,   36075 .. 36078,
    36100,            37010 .. 37024,   37026,            37028 .. 37032,
    37035 .. 37036,   37038 .. 37047,   37049 .. 37060,   37062 .. 37064,
    37066 .. 37069,   37100,            37121 .. 37129,   37131 .. 37139,
    37142,            38010 .. 38013,   38015 .. 38043,   38045 .. 38057,
    38059 .. 38083,   38085 .. 38089,   38100,            39010 .. 39058,
    39100,

    40010 .. 40027,   40030,            40032 .. 40038,   40041 .. 40043,
    40045 .. 40046,   40048,            40050 .. 40057,   40059 .. 40069,
    40100,            40121 .. 40129,   40131 .. 40139,   40141,
    41010 .. 41023,   41025 .. 41040,   41042 .. 41046,   41048 .. 41049,
    41051 .. 41059,   41100,            42010 .. 42028,   42030 .. 42035,
    42037,            42039 .. 42049,   42100,            43010 .. 43015,
    43017 .. 43022,   43024 .. 43025,   43028 .. 43030,   43032,
    43035 .. 43045,   43047 .. 43053,   43055 .. 43056,   43058 .. 43059,
    43100,   43126,   44010 .. 44012,   44014 .. 44016,   44019 .. 44023,
    44025 .. 44030,   44033 .. 44035,   44037,   44039,   44041 .. 44043,
    44045,            44047 .. 44049,   44100,            45010 .. 45012,
    45014 .. 45015,   45017 .. 45027,   45030 .. 45039,   45100,
    46010 .. 46014,   46017 .. 46020,   46022 .. 46033,   46035 .. 46037,
    46039 .. 46049,   46100,            47010 .. 47021,   47023,   47025,
    47027 .. 47028,   47030,   47032,   47034 .. 47035,   47039,
    47042 .. 47043,   47100,            47121 .. 47122,   47814,   47822,
    47824 .. 47826,   47832 .. 47838,   47841 .. 47843,   47853 .. 47855,
    47861 .. 47867,   47900,            48010 .. 48015,   48017 .. 48018,
    48020,   48022,   48024 .. 48027,   48100,

    50010,            50012 .. 50014,   50018 .. 50023,   50025 .. 50028,
    50031 .. 50039,   50041,            50050 .. 50056,   50058 .. 50068,
    50100,            50121 .. 50127,   50129,            50131 .. 50137,
    50139,            50141 .. 50145,   51010 .. 51013,   51015 .. 51021,
    51024,   51028,   51030 .. 51031,   51034 .. 51037,   51039,   51100,
    52010 .. 52011,   52014 .. 52018,   52020 .. 52022,   52024 .. 52033,
    52035 .. 52038,   52041,            52043 .. 52048,   52100,
    53011 .. 53027,   53030 .. 53031,   53034 .. 53037,   53040 .. 53043,
    53045,            53047 .. 53049,   53100,            54010 .. 54016,
    54021,   54023,   54026 .. 54029,   54033,   54035,   54038,   54100,
    55010 .. 55016,   55018 .. 55020,   55022 .. 55023,   55025,   55027,
    55030 .. 55036,   55038,            55040 .. 55042,   55045,   55047,
    55049,   55051,   55054,            55060 .. 55062,   55064,   55100,
    56010 .. 56012,   56017,            56019 .. 56025,   56028 .. 56038,
    56040 .. 56041,   56043 .. 56046,   56048,   56100,   56121 .. 56128,
    57014,            57016 .. 57017,   57020 .. 57023,   57025,
    57027 .. 57028,   57030 .. 57034,   57036 .. 57039,   57100,
    57121 .. 57128,   58010 .. 58012,   58014 .. 58015,   58017 .. 58020,
    58022 .. 58027,   58031,            58033 .. 58034,   58036 .. 58038,
    58040,            58042 .. 58045,   58051,            58053 .. 58055,
    58100,   59011,   59013,            59015 .. 59016,   59021,
    59024 .. 59026,   59100,

    60010 .. 60011,   60013,   60015,   60018 .. 60022,   60024 .. 60027,
    60030 .. 60031,   60033 .. 60041,   60043 .. 60044,   60048,   60100,
    60121 .. 60129,   60131,            61010 .. 61014,   61020 .. 61026,
    61028 .. 61030,   61032 .. 61034,   61037 .. 61049,   61100,
    62010 .. 62012,   62014 .. 62015,   62017 .. 62022,   62024 .. 62029,
    62032,            62034 .. 62036,   62038 .. 62039,   62100,   63020,
    63031,            63061 .. 63069,   63071 .. 63079,   63081 .. 63088,
    63091 .. 63096,   63100,            63811 .. 63816,   63821 .. 63828,
    63831 .. 63839,   63841 .. 63848,   63851 .. 63858,   63900,
    64010 .. 64016,   64018,            64020 .. 64021,   64023 .. 64028,
    64030 .. 64037,   64039 .. 64047,   64049,   64100,   65010 .. 65015,
    65017,            65019 .. 65020,   65022 .. 65029,   65100,
    65121 .. 65129,   65131 .. 65132,   66010 .. 66012,   66014 .. 66023,
    66026,            66030 .. 66034,   66036 .. 66038,   66040 .. 66047,
    66050 .. 66052,   66054,   66100,   67010,            67012 .. 67015,
    67017,            67019 .. 67041,   67043 .. 67064,   67066 .. 67069,
    67100,

    70010 .. 70011,   70013 .. 70029,   70032 .. 70033,   70037 .. 70038,
    70042 .. 70044,   70054,   70056,   70100,            70121 .. 70129,
    70131,            71010 .. 71043,   71045,            71047 .. 71048,
    71100,   72010,   72012 .. 72029,   72100,            73010 .. 73059,
    73100,            74010 .. 74028,   74100,            75010 .. 75029,
    75100,            76011 .. 76017,   76121,   76123,   76125,

    80010 .. 80014,   80016 .. 80036,   80038 .. 80042,   80044 .. 80051,
    80053 .. 80063,   80065 .. 80067,   80069 .. 80071,   80073 .. 80079,
    80100,            80121 .. 80129,   80131 .. 80139,   80141 .. 80147,
    81010 .. 81014,   81016 .. 81017,   81020 .. 81025,   81027 .. 81028,
    81030 .. 81044,   81046 .. 81047,   81049 .. 81059,   81100,
    82010 .. 82011,   82013,            82015 .. 82034,   82036 .. 82038,
    82100,            83010 .. 83018,   83020 .. 83032,   83034 .. 83059,
    83100,            84010 .. 84040,   84042 .. 84053,   84055 .. 84057,
    84059 .. 84062,   84065 .. 84070,   84073 .. 84088,   84090 .. 84092,
    84095 .. 84096,   84098 .. 84100,   84121 .. 84129,   84131 .. 84135,
    85010 .. 85018,   85020 .. 85040,   85042 .. 85044,   85046 .. 85059,
    85100,            86010 .. 86049,   86070 .. 86075,   86077 .. 86097,
    86100,   86170,   87010 .. 87024,   87026 .. 87038,   87040 .. 87048,
    87050 .. 87058,   87060 .. 87062,   87064,            87066 .. 87067,
    87069 .. 87076,   87100,            88020 .. 88022,   88024 .. 88025,
    88040 .. 88042,   88044 .. 88047,   88049 .. 88051,   88054 .. 88056,
    88060,   88062,   88064 .. 88065,   88067 .. 88070,   88100,
    88811 .. 88819,   88821 .. 88825,   88831 .. 88838,   88841 .. 88842,
    88900,            89010 .. 89018,   89020 .. 89050,   89052,   89054,
    89056 .. 89058,   89060,            89062 .. 89065,   89069,   89100,
    89121 .. 89129,   89131 .. 89135,   89812 .. 89819,   89821 .. 89824,
    89831 .. 89834,   89841 .. 89844,   89851 .. 89853,   89861 .. 89864,
    89866 .. 89868,   89900,

    90010 .. 90049,   90100,            90121 .. 90129,   90131 .. 90139,
    90141 .. 90149,   90151,            91010 .. 91029,   91100,
    92010 .. 92029,   92100,            93010 .. 93019,   93100,
    94010 .. 94019,   94100,            95010 .. 95022,   95024 .. 95025,
    95027 .. 95049,   95100,            95121 .. 95129,   95131,
    96010 .. 96019,   96100,            97010 .. 97019,   97100,
    98020 .. 98023,   98025 .. 98051,   98053 .. 98079,   98100,
    98121 .. 98129,   98131 .. 98139,   98141 .. 98149,   98151 .. 98159,
    98161 .. 98168,


}


__END__
