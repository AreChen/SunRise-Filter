--- Filter Title: SunRise Filter v1.0.1 (Sully Original Rules)
--- Filter Type: MultiStrict
--- Filter Description: Sully's QoL v0.3.6 original rules with Chinese hard-coded display text only.
--- Filter Link: https://raw.githubusercontent.com/AreChen/SunRise-Filter/refs/heads/sully-original-zhcn/SunRise-Filter.lua
return {
    reload = "{white}SunRise Filter {purple}v1.0.1 {gray}(Sully 原版规则)",  -- **********   Big shout out to Squid and PlausibleSheep because this filter wouldn't exist without me plagiarizing their filters, features, and logic. They put in the hard work, I'm a hack.   ****************
    language = "enUS",
    filter_titles = { "Leveling", "Strict - Nightmare", "Very-Strict - Hell (pre-maps)", "Uber-Strict - Maps+" },
    audioPlayback = true,
    audioVoice = 0,
    debug = false,
    allowOverrides = true,
    filter_level = 3,
    rules = {
        --                                                       Chat notifications enable/disable what you want (primarily for Uber Strict) 
        {
            -- Left blank intentionally, only for annotation
        },
        -- Ancient Decipherer Notification
        {
            code = "ddd",
            notify = "{red}锻造材料：{gold}古代解读者",
            filter_levels = "1,2,3"
        },
        -- Socket Donut Notification
            {   
            code = "sdo",
            notify = "{red}锻造材料：{name}"
        },
        -- Worldstone Shard Notification
        {
            code = "wss", 
            notify = "{red}锻造材料：{white}世界石碎片"
        },
        {
            codes = {"xl1","xl2","xl3","xl4","xl5","xl6","xl7","xl8","xl9","xlx","xly"},
            notify = "{red}锻造材料：{name}",
            filter_levels = "1,2,3"
        },
        -- Normal Uniques Notification
        {   
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7", 
            rarity = "0",
            notify = "{gray}普通暗金：{gold}{name}",
            filter_levels = "1, 2"
        },
        -- Exceptional Uniques Notification
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "1",
            notify = "{gray}扩展暗金：{gold}{name}",
            filter_levels = "1, 2"
        },
        -- Elite Uniques Notification
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "2",
            notify = "{gray}精英暗金：{gold}{name}",
            filter_levels = "1, 2, 3"
        },
        -- Normal Set Items Notification
        {
            codes = "allitems",
            quality = "5",
            notify = "{gray}普通套装：{green}{name}",
            rarity = "0",
            filter_levels = "1,2"
        },
        -- Elite Set Items Notification
        {
            codes = "allitems",
            quality = "5",
            rarity = "1",
            notify = "{gray}扩展套装：{green}{name}",
            filter_levels = "1,2"
        },
        -- Elite Set Items Notification
        {
            codes = "allitems",
            quality = "5",
            rarity = "2",
            notify = "{gray}精英套装：{green}{name}",
            filter_levels = "1,2,3"
        },
        -- Normal Coupons Notification 
        {
            codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","04j"},
            notify = "{gold}普通兑换券：{white}{name}",
            filter_levels = "1,2"
        },
        -- Exceptional Coupons Notification
        {
            codes = {"01d","02d","03d","04d","05d","06d","07d","08d","09d","10d","11d","12d","14d","15d","16d","17d","18d","19d","20d","21d","22d","23d","24d","25d","26d","27d","28d","29d","30d","31d","32d","33d","34d","35d","36d","37d","38d","39d","40d","41d","42d","43d","44d","45d","46d","47d","48d","49d","50d","01g","02g","03g","04g","05g","06g","07g","08g","09g","10g","11g","12g","13g","14g","15g","16g","17g","18g","19g","20g","21g","22g","23g","24g","25g","26g","27g","28g","29g","30g","31g","32g","33g","34g","35g","36g","37g","38g","39g","40g","41g","42g","43g","44g","45g","46g","47g","48g","49g","50g","51g","52g","53g","54g","55g","56g","57g","58g","59g","60g","61g","62g","63g","64g","65g","66g","67g","68g","69g","70g","71g","72g","73g","74g","75g","76g","77g","78g","05i","06i","07i","08i","05j","06j","07j","08j","04i"},
            notify = "{gold}扩展级兑换券：{white}{name}",
            filter_levels = "1,2,3"
        },
        -- Elite Coupons Notification
        {
            codes = {"01e","02e","04e","05e","07e","08e","09e","10e","11e","12e","13e","14e","15e","16e","18e","19e","20e","21e","22e","23e","24e","25e","26e","27e","28e","29e","30e","31e","32e","33e","34e","35e","36e","37e","38e","39e","01h","02k","03h","04h","05h","06h","07h","08h","09h","10h","11h","12k","13h","14h","15h","16h","17h","18h","19h","20h","21h","22k","23h","24h","25h","26h","27h","28h","29h","30h","31h","32k","33h","34h","35h","36h","37h","38h","39h","40h","41h","42k","43h","44h","45h","47h","48h","49h","50h","51h","52k","53h","54h","55h","56h","57h","58h","59h","60h","61h","62k","09i","10i","11i","12i","09j","10j"},
            notify = "{gold}精英级兑换券：{white}{name}",
            filter_levels = "1,2,3"
        },
        -- Rare class jewelry Notification
        {
            codes = {"zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"}, 
            quality = "6",
            notify = "职业首饰：{yellow}{name}",
            filter_levels = "1,2,3"
        },
        -- Monster Parts Notification
        {
            codes = {"qll", "hrt", "brz", "jaw", "eyz", "hrn", "tal", "flg", "fng","sol", "scz", "spe", "zzz"}, 
            location = "onground",
            notify = "{red}锻造材料：{white}{name}",
            filter_levels = "1,2,3"
        },
        -- Monster Parts notification for Uber-Strict alerting Hearts and Souls, everything else still shows, just no chat alert
        {
            codes = {"hrt","sol"}, 
            location = "onground",
            notify = "{red}锻造材料：{white}{name}",
            filter_levels = 4
        },
        -- Perfect Gems Notification
        {
            codes = {"gvb", "gyb", "gbb", "ggb", "grb", "gwb", "skb", "gbk"}, 
            filter_levels = "1,2,3",
            notify = "{name}"
        },
        --                                                       Superior Item Highlighting (Elite) 
        {
            -- Left blank intentionally, only for annotation
        },
        -- Elite Boots with 20+ Faster Run/Walk
        {
            codes = {"ylb","yvb","ymb","ytb","yhb","ybt","ulb","uvb","umb","utb","uhb"},
            stat = {index = 96, op = ">=", value = 20},
            suffix = "{red}[{stat=(96)}%% 跑速]"
        },
        -- Elite Boots with -8 Enemy Resist
        {
            codes = {"ylb","yvb","ymb","ytb","yhb","ybt","ulb","uvb","umb","utb","uhb"},
            stat = {index = 333, op = ">=", value = 8},
            stat = {index = 334, op = ">=", value = 8},
            stat = {index = 335, op = ">=", value = 8},
            stat = {index = 336, op = ">=", value = 8},
            suffix = "{red}[-{stat=(333)}%% 破抗]"
        },
        -- Elite Belts with -8 Enemy Resist
        {
            codes = {"alb","avb","bmb","atb","ahb","yms","ulc","uvc","umc","utc","uhc","m10"},
            stat = {index = 333, op = ">=", value = 8},
            stat = {index = 334, op = ">=", value = 8},
            stat = {index = 335, op = ">=", value = 8},
            stat = {index = 336, op = ">=", value = 8},
            suffix = "{red}[-{stat=(333)}%% 破抗]"
        },
        -- Elite Belts with 8+ Phys Resist
        {
            codes = {"alb","avb","bmb","atb","ahb","yms","ulc","uvc","umc","utc","uhc","m10"},
            stat = {index = 36, op = ">=", value = 8},
            suffix = "{red}[{stat=(36)}%% 物抗]"
        },
        -- Elite Bows/Javelins with +3 Bow or +3 Jav skills
        {
            codes = {"0pb","amb","amc","q80","amf","q82","m31","amd","ame","q81"},
            stat = OR {{index = 188, op = ">=", param = 0, value = 3},{index = 188, op = ">=", param = 1, value = 3}, {index = 188, op = ">=", param = 2, value = 3}, {index = 188, op = ">=", param = 3, value = 3}, {index = 188, op = ">=", param = 4, value = 3}, {index = 188, op = ">=", param = 5, value = 3}, {index = 188, op = ">=", param = 6, value = 3}, {index = 188, op = ">=", param = 7, value = 3}, {index = 188, op = ">=", param = 8, value = 3}, {index = 188, op = ">=", param = 9, value = 3}, {index = 188, op = ">=", param = 10, value = 3}, {index = 188, op = ">=", param = 11, value = 3}, {index = 188, op = ">=", param = 12, value = 3}, {index = 188, op = ">=", param = 13, value = 3}, {index = 188, op = ">=", param = 14, value = 3}, {index = 188, op = ">=", param = 15, value = 3}, {index = 188, op = ">=", param = 16, value = 3}, {index = 188, op = ">=", param = 17, value = 3}, {index = 188, op = ">=", param = 18, value = 3}, {index = 188, op = ">=", param = 19, value = 3}, {index = 188, op = ">=", param = 20, value = 3}, {index = 188, op = ">=", param = 21, value = 3}},
            suffix = "{red}[+3]",
            quality = "3"
        },
        -- Staffs with +4 Sorc Tab
        {
            codes = {"1ss","1ls","1cs","1bs","1ws","6ss","6ls","6cs","6bs","6ws","m29","m36","m11"},
            stat = OR {{index = 188, op = "==", param = 0, value = 4},{index = 188, op = "==", param = 1, value = 4}, {index = 188, op = "==", param = 2, value = 4}, {index = 188, op = "==", param = 3, value = 4}, {index = 188, op = "==", param = 4, value = 4}, {index = 188, op = "==", param = 5, value = 4}, {index = 188, op = "==", param = 6, value = 4}, {index = 188, op = "==", param = 7, value = 4}, {index = 188, op = "==", param = 8, value = 4}, {index = 188, op = "==", param = 9, value = 4}, {index = 188, op = "==", param = 10, value = 4}, {index = 188, op = "==", param = 11, value = 4}, {index = 188, op = "==", param = 12, value = 4}, {index = 188, op = "==", param = 13, value = 4}, {index = 188, op = "==", param = 14, value = 4}, {index = 188, op = "==", param = 15, value = 4}, {index = 188, op = "==", param = 16, value = 4}, {index = 188, op = "==", param = 17, value = 4}, {index = 188, op = "==", param = 18, value = 4}, {index = 188, op = "==", param = 19, value = 4}, {index = 188, op = "==", param = 20, value = 4}, {index = 188, op = ">=", param = 21, value = 4}},
            suffix = "{red}[+4]",
            quality = "3"
        },
        -- Staffs with +5 Sorc Tab
        {
            codes = {"1ss","1ls","1cs","1bs","1ws","6ss","6ls","6cs","6bs","6ws","m29","m36","m11"},
            stat = OR {{index = 188, op = "==", param = 0, value = 5},{index = 188, op = "==", param = 1, value = 5}, {index = 188, op = "==", param = 2, value = 5}, {index = 188, op = "==", param = 3, value = 5}, {index = 188, op = "==", param = 4, value = 5}, {index = 188, op = "==", param = 5, value = 5}, {index = 188, op = "==", param = 6, value = 5}, {index = 188, op = "==", param = 7, value = 5}, {index = 188, op = "==", param = 8, value = 5}, {index = 188, op = "==", param = 9, value = 5}, {index = 188, op = "==", param = 10, value = 5}, {index = 188, op = "==", param = 11, value = 5}, {index = 188, op = "==", param = 12, value = 5}, {index = 188, op = "==", param = 13, value = 5}, {index = 188, op = "==", param = 14, value = 5}, {index = 188, op = "==", param = 15, value = 5}, {index = 188, op = "==", param = 16, value = 5}, {index = 188, op = "==", param = 17, value = 5}, {index = 188, op = "==", param = 18, value = 5}, {index = 188, op = "==", param = 19, value = 5}, {index = 188, op = "==", param = 20, value = 5}, {index = 188, op = "==", param = 21, value = 5}},
            suffix = "{red}[+5]",
            quality = "3"
        },
        -- Elite Gloves with 20+ IAS
        {
            codes = {"ylg","yvg","ymg","ytg","yhg","yig","ulg","uvg","umg","utg","uhg"},
            stat = {index = 93, op = ">=", value = 20},
            quality = "3",
            suffix = "{red}[{stat=(93)}%% 攻速]"
        },
        -- Elite Gloves with 20+ FCR
        {
            codes = {"ylg","yvg","ymg","ytg","yhg","yig","ulg","uvg","umg","utg","uhg"},
            stat = {index = 105, op = ">=", value = 20},
            quality = "3",
            suffix = "{red}[{stat=(105)}%% 施法速度]"
        },
        -- Elite Gloves with -Enemy Resists
        {
            codes = {"ylg","yvg","ymg","ytg","yhg","yig","ulg","uvg","umg","utg","uhg"},
            stat = {index = 333, op = ">=", value = 8},
            stat = {index = 334, op = ">=", value = 8},
            stat = {index = 335, op = ">=", value = 8},
            stat = {index = 336, op = ">=", value = 8},
            suffix = "{red}-{stat=(333)}%% 敌抗"
        },
        -- Tooltip descriptions for noob charm
        {
            code = "c11",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = "{purple}升级：与 7 个稀有护身符、药剂、枫叶和古代解读者合成\n可用任意符文、宝石或珠宝镶嵌\n{green}查看阿卡拉出售的物品可获得更多提示！\n"
        },
        -- Tooltip descriptions for veteran charm
        {
            code = "c12",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            prefix_desc = " {purple}打孔：与 1 个完美宝石和插槽甜甜圈合成\n 支持护身符符文之语\n"
        },
        -- Vendor item tooltips for some crafting recipes
        {
            code = "vps",
            location = "atvendor", 
            suffix_desc = "\n辨识书：珠宝锻造配方\n赦免徽章：装备锻造配方\n{green}悬停完美宝石可查看职业锻造配方\n"
        },
        -- Vendor tip
        {
            code = "gvb",
            location = "atvendor",
            prefix = "{blue}非野蛮人武器：{gray}25-35 攻速|150-200 增强伤害|15-25 偷取生命|10-15 偷取法力\n{blue}野蛮人武器：{gray}+1-2 野蛮人技能|25-35 攻速|150-200 增强伤害\n{blue}戒指：{gray}+1-2 野蛮人技能|最大生命 10-15%%|20-30 力量|攻击最大伤害 +20-30\n{blue}护身符：{gray}+1-2 野蛮人技能|最大生命 10-15%%|15-25 全抗\n{blue}胸甲：{gray}+1-2 野蛮人技能|80-100 增强防御|15-25 全属性|10-15 物理抗性\n{blue}盾牌：{gray}+1-2 野蛮人技能|20-30 快速格挡|80-100 增强防御|3-5 格挡几率\n{blue}腰带：{gray}+1 野蛮人技能|20-30 打击恢复|80-100 增强防御|30-45 力量\n{blue}手套：{gray}+1 野蛮人技能|20-30 攻速|80-100 增强防御|30-45 敏捷\n{blue}靴子：{gray}+1 野蛮人技能|20-30 跑步/行走速度|80-100 增强防御|30-45 体力\n{blue}头盔：{gray}+1-2 野蛮人技能|80-100 增强防御|30-45 精力|15-25 全抗\n{white}每个配方都会附加以下固定属性，并额外获得 1-4 条随机词缀\n{blue}魔法{gray}装备 + 锻造锤 + 完美紫宝石 + 任意珠宝\n"
        },
        -- Vendor tip
        {
            code = "gyb",
            location = "atvendor",
            prefix = "{blue}非德鲁伊武器：{gray}25-35 攻速|150-200 增强伤害|25-40 法术伤害\n{blue}德鲁伊武器：{gray}+1-2 德鲁伊技能|25-35 攻速|150-200 增强伤害\n{blue}戒指：{gray}+1-2 德鲁伊技能|20-30 体力|最大生命 10-15%%|12-18 法术伤害\n{blue}护身符：{gray}+1-2 德鲁伊技能|20-30 体力|最大生命 15%%|15-25 全抗\n{blue}胸甲：{gray}+1-2 德鲁伊技能|80-100 增强防御|15-25 全属性|10-15 物理抗性\n{blue}盾牌：{gray}+1-2 德鲁伊技能|20-30 快速格挡|3-5 格挡几率|80-100 增强防御\n{blue}腰带：{gray}+1 德鲁伊技能|20-30 打击恢复|80-100 增强防御|30-45 力量\n{blue}手套：{gray}+1 德鲁伊技能|20-30 攻速|80-100 增强防御|30-45 敏捷\n{blue}靴子：{gray}+1 德鲁伊技能|20-30 跑步/行走速度|80-100 增强防御|30-45 体力\n{blue}头盔：{gray}+1-2 德鲁伊技能|90-100 增强防御|30-45 精力|15-25 全抗\n{white}每个配方都会附加以下固定属性，并额外获得 1-4 条随机词缀\n{blue}魔法{gray}装备 + 泰拉尼姆矿石 + 完美黄宝石 + 任意珠宝\n"
        },
        -- Vendor tip
        {
            code = "ggb",
            location = "atvendor", 
            prefix = "{blue}非亚马逊武器：{gray}25-35 攻速|150-200 增强伤害|50-100 额外准确率\n{blue}亚马逊武器：{gray}+1-2 亚马逊技能|25-35 攻速|150-200 增强伤害\n{blue}戒指：{gray}+1-2 亚马逊技能|30-45 敏捷|最大生命 10-15%%|最小攻击伤害 +15-25\n{blue}护身符：{gray}+1-2 亚马逊技能|20-30 敏捷|最大生命 15%%|15-25 全抗\n{blue}胸甲：{gray}+1-2 亚马逊技能|80-100 增强防御|15-25 全属性|10-15 物理抗性\n{blue}盾牌：{gray}+1-2 亚马逊技能|20-30 快速格挡|3-5 格挡几率|80-100 增强防御\n{blue}腰带：{gray}+1 亚马逊技能|20-30 打击恢复|80-100 增强防御|30-45 力量\n{blue}手套：{gray}+1 亚马逊技能|20-30 攻速|80-100 增强防御|30-45 敏捷\n{blue}靴子：{gray}+1 亚马逊技能|20-30 跑步/行走速度|80-100 增强防御|30-45 体力\n{blue}头盔：{gray}+1-2 亚马逊技能|90-100 增强防御|30-45 精力|15-25 全抗\n{white}每个配方都会附加以下固定属性，并额外获得 1-4 条随机词缀\n{blue}魔法{gray}装备 + 蜘蛛丝 + 完美绿宝石 + 任意珠宝\n"
        },
        -- Vendor tip
        {
            code = "grb", 
            location = "atvendor", 
            prefix = "{blue}非刺客武器：{gray}25-35 攻速|150-200 增强伤害|20-30 致命打击\n{blue}刺客武器：{gray}+1-2 刺客技能|25-35 攻速|150-200 增强伤害\n{blue}戒指：{gray}+1-2 刺客技能|30-45 敏捷|最大生命 10-15%%|击杀回复生命 20-30|击杀回复法力 10-20\n{blue}护身符：{gray}+1-2 刺客技能|20-30 敏捷|最大生命 15%%|15-25 全抗\n{blue}胸甲：{gray}+1-2 刺客技能|80-100 增强防御|15-25 全属性|10-15 物理抗性\n{blue}盾牌：{gray}+1-2 刺客技能|20-30 快速格挡|3-5 格挡几率|80-100 增强防御\n{blue}腰带：{gray}+1 刺客技能|20-30 打击恢复|80-100 增强防御|30-45 力量\n{blue}手套：{gray}+1 刺客技能|20-30 攻速|80-100 增强防御|30-45 敏捷\n{blue}靴子：{gray}+1 刺客技能|20-30 跑步/行走速度|80-100 增强防御|30-45 体力\n{blue}头盔：{gray}+1-2 刺客技能|90-100 增强防御|30-45 精力|15-25 全抗\n{white}每个配方都会附加以下固定属性，并额外获得 1-4 条随机词缀\n{blue}魔法{gray}装备 + 龙石 + 完美红宝石 + 任意珠宝\n"
        },
        -- Vendor tip
        {
            code = "skb", 
            location = "atvendor", 
            prefix = "{blue}非死灵法师武器：{gray}25-35 攻速|150-200 增强伤害|20-30 压碎性打击\n{blue}死灵法师武器：{gray}+1-2 死灵法师技能|25-35 攻速|150-200 增强伤害\n{blue}戒指：{gray}+1-2 死灵法师技能|30-45 精力|最大生命 10-15%%|15-25 快速施法\n{blue}护身符：{gray}+1-2 死灵法师技能|20-30 敏捷|最大生命 15%%|15-25 全抗\n{blue}胸甲：{gray}+1-2 死灵法师技能|80-100 增强防御|15-25 全属性|10-15 物理抗性\n{blue}盾牌：{gray}+1-2 死灵法师技能|20-30 快速格挡|3-5 格挡几率|80-100 增强防御\n{blue}腰带：{gray}+1 死灵法师技能|20-30 打击恢复|80-100 增强防御|30-45 力量\n{blue}手套：{gray}+1 死灵法师技能|20-30 攻速|80-100 增强防御|30-45 敏捷\n{blue}靴子：{gray}+1 死灵法师技能|20-30 跑步/行走速度|80-100 增强防御|30-45 体力\n{blue}头盔：{gray}+1-2 死灵法师技能|90-100 增强防御|30-45 精力|15-25 全抗\n{white}每个配方都会附加以下固定属性，并额外获得 1-4 条随机词缀\n{blue}魔法{gray}装备 + 龙石 + 完美红宝石 + 任意珠宝\n"
        },
        -- Vendor tip
        {
            code = "gwb", 
            location = "atvendor", 
            prefix = "{blue}非圣骑士武器：{gray}25-35 攻速|150-200 增强伤害|对恶魔伤害 +200-300|对不死生物伤害 +200-300\n{blue}圣骑士武器：{gray}+1-2 圣骑士技能|25-35 攻速|150-200 增强伤害\n{blue}戒指：{gray}+1-2 圣骑士技能|20-30 力量|最大生命 10-15%%|15-25 全抗\n{blue}护身符：{gray}+1-2 圣骑士技能|20-30 敏捷|最大生命 15%%|15-25 全抗\n{blue}胸甲：{gray}+1-2 圣骑士技能|80-100 增强防御|15-25 全属性|10-15 物理抗性\n{blue}盾牌：{gray}+1-2 圣骑士技能|20-30 快速格挡|3-5 格挡几率|80-100 增强防御\n{blue}腰带：{gray}+1 圣骑士技能|20-30 打击恢复|80-100 增强防御|30-45 力量\n{blue}手套：{gray}+1 圣骑士技能|20-30 攻速|80-100 增强防御|30-45 敏捷\n{blue}靴子：{gray}+1 圣骑士技能|20-30 跑步/行走速度|80-100 增强防御|30-45 体力\n{blue}头盔：{gray}+1-2 圣骑士技能|90-100 增强防御|30-45 精力|15-25 全抗\n{white}每个配方都会附加以下固定属性，并额外获得 1-4 条随机词缀\n{blue}魔法{gray}装备 + 龙石 + 完美红宝石 + 任意珠宝\n"
        },
        -- Vendor tip
        {
            code = "gbb", 
            location = "atvendor", 
            prefix = "{blue}非法师武器：{gray}25-35 攻速|150-200 增强伤害|-15-25 敌人元素和毒素抗性\n{blue}法师武器：{gray}+1-2 法师技能|25-35 攻速|150-200 增强伤害\n{blue}戒指：{gray}+1-2 法师技能|20-30 精力|最大生命 10-15%%|-8-12 敌人元素和毒素抗性\n{blue}护身符：{gray}+1-2 法师技能|20-30 敏捷|最大生命 15%%|15-25 全抗\n{blue}胸甲：{gray}+1-2 法师技能|80-100 增强防御|15-25 全属性|10-15 物理抗性\n{blue}盾牌：{gray}+1-2 法师技能|20-30 快速格挡|3-5 格挡几率|80-100 增强防御\n{blue}腰带：{gray}+1 法师技能|20-30 打击恢复|80-100 增强防御|30-45 力量\n{blue}手套：{gray}+1 法师技能|20-30 攻速|80-100 增强防御|30-45 敏捷\n{blue}靴子：{gray}+1 法师技能|20-30 跑步/行走速度|80-100 增强防御|30-45 体力\n{blue}头盔：{gray}+1-2 法师技能|90-100 增强防御|30-45 精力|15-25 全抗\n{white}每个配方都会附加以下固定属性，并额外获得 1-4 条随机词缀\n{blue}魔法{gray}装备 + 龙石 + 完美红宝石 + 任意珠宝\n"
        },
        -- Vendor tip
        {
            code = "toa", 
            location = "atvendor", 
            suffix_desc = "\n{blue}\n+1 法师技能：2 个锻造石 + 碎裂蓝宝石\n{white}+1 圣骑士技能：2 个锻造石 + 碎裂钻石\n{gray}+1 死灵法师技能：2 个锻造石 + 碎裂骷髅\n{yellow}+1 德鲁伊技能：2 个锻造石 + 碎裂黄宝石\n{purple}+1 野蛮人技能：2 个锻造石 + 碎裂紫宝石\n{red}+1 刺客技能：2 个锻造石 + 碎裂红宝石\n{green}+1 亚马逊技能：2 个锻造石 + 碎裂绿宝石\n+{white}1 全技能（珠宝和护身符除外）：枫叶 + 锻造石 + 碎裂宝石\n{gray}符文锻造（珠宝和护身符除外）：2 个相同符文 + 碎裂宝石 - 添加该符文的加成\n{lilac}装备锻造\n"
        },
        -- Vendor tip
        {
            code = "tbk", 
            location = "atvendor", 
            suffix = "\n{blue}15%% 魔法物品获取率：{green}碎裂绿宝石 {gray}+ 锻造石\n{blue}15%% 攻击速度：{red}碎裂红宝石 {gray}+ 锻造石\n{blue}9%% 压碎性打击几率：{purple}碎裂紫宝石 {gray}+ 锻造石\n{blue}12%% 最大生命：{yellow}碎裂黄宝石 {gray}+ 锻造石\n{blue}15%% 快速施法：碎裂骷髅 {gray}+ 锻造石\n{blue}全抗性 +12：{white}碎裂钻石 {gray}+ 锻造石\n{blue}12%% 最大法力：{blue}碎裂蓝宝石 {gray}+ 锻造石\n{gray}{blue}添加符文的武器词缀：{gray}2 个相同符文（最高到 {yellow}O 符文{gray}）+ 碎裂宝石 + 回城卷轴\n{blue}添加符文的头盔词缀：{gray}2 个相同符文（最高到 {yellow}O 符文{gray}）+ 碎裂宝石 + 辨识卷轴\n将 {blue}魔法{gray}/{yellow}稀有 {gray}珠宝与以下材料合成：\n{lilac}珠宝锻造{white}"
        },
        -- Hiding small gold piles based on level
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 1 },  --hides gold values of 1
            hide = true, 
        },
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 99 },  --hides gold under 100
            pstat = { index = 12, op = ">=", value = 20 }, -- Char Level is >= 20
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 499 }, --hides gold under 500
            pstat = { index = 12, op = ">=", value = 60 }, -- Char Level is >= 60
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 749 }, --hides gold under 1k
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 1999 }, --hides gold under 2k
            pstat = { index = 12, op = ">=", value = 90 }, -- Char Level is >= 90
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            code = "gld",
            name_override = "{white}${stat=(14)}",
        },
        -- Hiding items after level 10 (Tomes, Scrolls, Elixirs, Lowest potions)
        {
            codes = {"vps","yps","gpm","opm","wms","tbk","ibk","tsc","isc","hp1","mp1"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 10 (Low quality gear, Normal items with less than 2 sockets)
        {
            codes = "allitems",
            quality = "1",
            pstat = { index = 12, op = ">=", value = 10 },
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv","kgk","cqv","aqv","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "2",
            sockets ="1-",
            pstat = { index = 12, op = ">=", value = 10 },
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 20 (All magic Weapons/Armor - 2 lowest postions - Chipped gems)
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv","kgk","cqv","aqv","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = 4,
            pstat = { index = 12, op = ">=", value = 20},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes ={"hp2","mp2"},
            pstat = { index = 12, op = ">=", value = 20},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes ={"gcv","gcy", "gcb", "gcg", "gcr", "gcw", "skc", "gck"},
            pstat = { index = 12, op = ">=", value = 20},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 40 (3 lowest potions, normal gems)
        {
            codes ={"hp3","mp3"},
            pstat = { index = 12, op = ">=", value = 40},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        {
            codes ={"gnv","gny", "gnb", "gng", "gnr", "gnw", "snc", "gnk"},
            pstat = { index = 12, op = ">=", value = 40},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Hiding items after level 60 (All potions)
        {
            codes ={"hp4","hp5","mp4","mp5"},
            pstat = { index = 12, op = ">=", value = 40},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Leveling filter is handled based on Levels but this will show items the other strictness levels are hiding
        {
            codes ="allitems",
            hide = false,
            filter_levels = 1
        },
        -- Strict: Hiding Low Tier LoD Decals
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l"}, -- Hiding Low Tier LoD Decals
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 2
        },
        -- Strict: Hiding White, Yellow, and Orange ESR runes
        {
            codes = {"r01","r02","r03","r04","r05","r08","r09","r10","r11","r12","r15","r16","r17","r18","r19","r20","r21"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 2
        },
        -- Strict: Hiding normal health and mana potions
        {
            codes = {"hp1","hp2","hp3","hp4","hp5","mp1","mp2","mp3","mp4","mp5"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 2
        },
        -- Strict: Hiding non-class based rings and amulets
        {
            codes = {"rng","amu"}, 
            quality = "4-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3,
        },
        -- Very Strict: Hiding Low and Mid Tier LoD Decals
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"}, -- Hiding Low and Mid Tier LoD Decals
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding White, Yellow, and Orange ESR runes
        {
            codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding Normal Coupons
        {
            codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","04j"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding all magic jewelry, large and grand charms
        {
            codes = {"rng","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam","cm1","cm2","cm3","cx1","cx2","cx3"}, 
            quality = "4",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels =3
        },
        -- Very Strict: Hiding all Normal rarity Unique weapons/armor
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "0",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding all Normal rarity weapons/armor
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "2",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding 25% rejuvs
        {
            code = "rvs", 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding all Normal/Exceptional Set items
        {
            codes = "allitems",
            quality = "5",
            rarity = "1-",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3,
        },
        -- Hide Normal/Exceptional Superior items
        {
            codes = "allitems",
            quality = "3",
            rarity = "1-",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hiding flawless gems
        {
            codes = {"gzv", "gly", "glb", "glg", "glr", "glw", "skl", "gzk"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Very Strict: Hide magic arrows/bolts
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv"}, 
            hide = true,
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Hiding all rares with 0 sockets
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = 6,
            sockets = "0",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 3
        },
        -- Uber Strict: Hiding low Low/Mid LoD Decals
        {
            codes = {"01l","02l","03l","04l","05l","06l","07l","08l","09l","10l","11l","12l","13l","14l","15l","16l","17l","18l","19l","20l","21l","22l"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all magic and normal Mythical items
        {
            codes = {"m01","m02","m03","m04","m05","m06","m07","m08","m09","m10","m11","m12","m13","m14","m15","m16","m17","m18","m19","m20","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","m39"},
            quality = 4,
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4                                              
        },
        {
            codes = {"m01","m02","m03","m04","m05","m06","m07","m08","m09","m10","m11","m12","m13","m14","m15","m16","m17","m18","m19","m20","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","m39"},
            quality = 2,
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
                                                            
        },
        -- Uber Strict: Hiding T1 Maps
        {
            codes = {"z01","z02","z03","z04"},
            hide = true,
            filter_levels = 4
        },
        -- Uber Strict: Hiding any ESR runes below Gold
        {
            codes = {"r01","r02","r03","r04","r05","r06","r07","r08","r09","r10","r11","r12","r13","r14","r15","r16","r17","r18","r19","r20","r21","r22","r23","r24","r25","r26","r27","r28", "r29", "r30", "r31","r32","r33","r34","r35"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all Normal and Exceptional quality Unique weapons/armor
        {
            codes = {"srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            rarity = "1-",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all Set items
        {
            codes = "allitems",
            quality = "5",
            hide = true, -- Hiding all Set items
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding magic rings, amulets, charms, and jewels
        {
            codes = {"mrn","mam","rin","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam","cm1","cm2","cm3","cx1","cx2","cx3"},
            quality = "4",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels =4
        },
        -- Uber Strict: Hiding all non mythical superior base
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "3-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: hiding all non mythical rares
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv","kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = 6,
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding non-perfect gems
        {
            codes = {"gzv","gpv","gly","gpy","glb", "gpb", "glg", "gpg", "glr", "gpr", "glw", "gpw", "skl","skz", "gzk", "gpk"}, 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding 25% rejuvs
        {
            code = "rvs", 
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hide all arrows/bolts
        {
            codes = {"cqv","cq2","cq0","aq0","aq2","aqv"}, 
            quality = "7-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hide ancient decipherers
            {   
            code = "ddd",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all normal coupons except highlighted ones (SoJ)
        {
            codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","04j"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- Uber Strict: Hiding all exceptional coupons
        {
            codes = {"01d","02d","03d","04d","05d","06d","07d","08d","09d","10d","11d","12d","14d","15d","16d","17d","18d","19d","20d","21d","22d","23d","24d","25d","26d","27d","28d","29d","30d","31d","32d","33d","34d","35d","36d","37d","38d","39d","40d","41d","42d","43d","44d","45d","46d","47d","48d","49d","50d","01g","02g","03g","04g","05g","06g","07g","08g","09g","10g","11g","12g","13g","14g","15g","16g","17g","18g","19g","20g","21g","22g","23g","24g","25g","26g","27g","28g","29g","30g","31g","32g","33g","34g","35g","36g","37g","38g","39g","40g","41g","42g","43g","44g","45g","46g","47g","48g","49g","50g","51g","52g","53g","54g","55g","56g","57g","58g","59g","60g","61g","62g","63g","64g","65g","66g","67g","68g","69g","70g","71g","72g","73g","74g","75g","76g","77g","78g","05i","06i","07i","08i","05j","06j","07j","08j","04i"},
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4 
        },
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7", -- Elite Uniques
            rarity = "2",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            filter_levels = 4
        },
        -- NEVER hide Runeword items (I mean don't drop them outside of town... but just in case)
        {
            codes = "allitems",
            runeword = true,
            hide = false
        },
        -- Always highlight and notify for Rare Jewels
        {
            code = "jew",
            quality = "6",
            notify = "{yellow}稀有珠宝",
            border = {0,200,200,255},
            background = {0,0,0,255},
            name_override = "{yellow}{name}",
            audio = "other.mp3"
        },
        -- Tooltip for Jewel crfating options
        {
            code = "jew",
            location = {"onplayer","atvendor"},
            quality = "6-",
            suffix_desc = "{gray}可用于锻造。查看阿卡拉出售的物品可获得配方{blue}\n"
        },
        -- Rejuvination Potion Style
        {
            code = "rvs",
            border = {128, 0, 128, 255},
            name_override = "{white}*{purple}25%%{white}*"
        },
        {
            code = "rvl",
            border = {128, 0, 128, 255},
            name_override = "{white}*{purple}50%%{white}*"
        },
        {
            code = "po3",
            border = {128, 0, 128, 255},
            name_override = "{purple}*{white}满{purple}*"
        },
        -- Ores tooltip, style, and notifications
        {
            code = "ore",
            border = {0, 0, 0, 255},
            background = {255, 215, 150},
            prefix = "{green}$$",
            name_override = "{black}矿石",
            suffix = "{green}$$",
        },
        {
            code = "ore",
            location = {"onplayer","atvendor"},
            suffix_desc = "{purple}空了以后卖给商人\n",
        },
        -- Fake note style, notifications
        {
            code = "fkn",
            border = {0, 0, 0, 255},
            background = {255, 215, 150},
            prefix = "{green}$$",
            name_override = "{black}假钞",
            suffix = "{green}$$",
        },
        -- Tooltip description for D-Stones
        {
            code = "ppp",
            location = {"onplayer","atvendor","onground"},
            suffix_desc = "{red}刺客锻造材料\n",
            name_override = "{purple}龙石",
            border = {128, 0, 128, 255},
        },
        {
            code = "hly",
            location = {"onplayer","atvendor"},
            suffix_desc = "{white}圣骑士锻造材料\n",
        },
        {
            code = "eee",
            location = {"onplayer","atvendor"},
            suffix_desc = "{gray}死灵法师锻造材料\n",
        },
        {
            code = "hh2",
            location = {"onplayer","atvendor"},
            suffix_desc = "{purple}野蛮人锻造材料\n",
        },
        {
            code = "ggg",
            location = {"onplayer","atvendor"},
            suffix_desc = "{blue}法师锻造材料\n",
        },
        {
            code = "sss",
            location = {"onplayer","atvendor"},
            suffix_desc = "{green}亚马逊锻造材料\n",
        },
        {
            code = "ttt",
            location = {"onplayer","atvendor"},
            suffix_desc = "{yellow}德鲁伊锻造材料\n",
        },
        -- Crafting Reagants Style and notifications: Socket Donut
        {
            code = "sdo",
            audio = "mid.mp3",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}插槽甜甜圈",
        },
        -- Crafting Reagants Style and notifications: Orb of Annointment
        {
            code = "um7",
            notify = "{red}*{green}*{blue}* {red}稀有锻造材料：{purple}涂油宝珠 {red}*{green}*{blue}*",
            border = {150,0,200,250},
            background = {255,255,255,250}
        },
        -- Crafting Reagants Style and notifications: Worldstone Shard
        {
            code = "wss",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}世界石碎片",
            audio = "mid.mp3"
        },
        {
            code = "wss",
            location = {"onplayer","atvendor"},
            prefix = "{white}与多功能储存器合成以储存\n{red}锻造材料\n"
        },
        -- Crafting Reagants Style and notifications: Maple Leaf
        {
            code = "map",
            notify = "{red}*{green}*{blue}* {red}稀有锻造材料：{gold}枫叶 {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}枫叶",
            audio = "gong.mp3"
        },
        -- Crafting Reagants Style and notifications: Anvil Stone
        {
            code = "qqq",
            notify = "{red}*{green}*{blue}* {red}稀有锻造材料：{gold}锻造石 {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}锻造石",
            audio = "gong.mp3"
        },
        -- Crafting Reagants Style and notifications: Elixir
        {
            code = "elx",
            notify = "{red}*{green}*{blue}* {red}稀有锻造材料：{gold}药剂 {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}药剂",
            audio = "gong.mp3"
        },
        -- Crafting Reagants Style and notifications: Cookbook
        {
            code = "yyy",
            notify = "{red}*{green}*{blue}* {red}稀有锻造材料：{gold}食谱 {red}*{green}*{blue}*",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            name_override = "{black}食谱",
            audio = "gong.mp3"
        },
        -- Tooltips for Maple Leaf, Anvil Stone, Elixir, Cookbook
        {
            codes = {"map", "elx", "yyy","qqq"},
            location = {"onplayer","atvendor"},
            prefix = "{white}与多功能储存器合成以储存\n{red}稀有锻造材料\n"
        },
        -- Supreme Crafting Material notifications and style - Lilith's Tear
        {
            code = "um8",
            notify = "{red}*{blue}*{green}*  {gold}顶级锻造材料 {red}*{blue}*{green}*：{name}",
            border = {255,0,0,255},
            background = {255,255,255,255},
            name_override = "{lilac}莉莉丝的结晶之泪",
            audio = "tink.mp3"
        },
        -- Tyrael's Feather
        {
            code = "um9",
            notify = "{red}*{blue}*{green}*  {gold}顶级锻造材料 {red}*{blue}*{green}*：{name}",
            border = {255,0,0,255},
            background = {255,255,255,255},
            name_override = "{lilac}泰瑞尔的永恒之羽",
            audio = "tink.mp3"
        },
        -- Lucion's Essence
        {
            code = "u17",
            notify = "{red}*{blue}*{green}*  {gold}顶级锻造材料 {red}*{blue}*{green}*：{name}",
            border = {255,0,0,255},
            background = {255,255,255,255},
            name_override = "{lilac}卢西恩精华",
            audio = "tink.mp3"
        },
        -- Astrogha's Heart
        {
            code ="u20",
            notify = "{red}*{blue}*{green}*  {gold}顶级锻造材料 {red}*{blue}*{green}*：{name}",
            border = {255,0,0,255},
            background = {255,255,255,255},
            name_override = "{lilac}阿斯特罗加的石化之心",
            audio = "tink.mp3"
        },
        -- Aura Stones notification
        {
            codes = {"an3", "an4", "an5", "an6", "an7", "an8", "an9"},
            notify = "{red}*{blue}*{green}*  {orange}光环石 {red}*{blue}*{green}*",
            border = {255,0,0,255},
            background = {255,255,255,255},
            name_override = "{red}{name}",
            audio = "tink.mp3"
        },
        -- Aura Stone Tooltips
        {
            code = "an3",
            location = {"onplayer","atvendor"},
            prefix = "{green}装备时赋予 10 级祝福瞄准光环\n{white}与任意护身符和碎裂宝石合成以锻造：\n {red}稀有锻造材料\n"
        },
        {
            code = "an4",
            location = {"onplayer","atvendor"},
            prefix = "{red}装备时赋予 15 级专注光环\n{white}与任意护身符和碎裂宝石合成以锻造：\n {red}稀有锻造材料\n"
        },
        {
            code = "an5",
            location = {"onplayer","atvendor"},
            prefix = "{purple}装备时赋予 20 级反抗光环\n{white}与任意护身符和碎裂宝石合成以锻造：\n {red}稀有锻造材料\n"
        },
        {
            code = "an6",
            location = {"onplayer","atvendor"},
            prefix = "{yellow}装备时赋予 10 级活力光环\n{white}与任意护身符和碎裂宝石合成以锻造：\n {red}稀有锻造材料\n"
        },
        {
            code = "an7",
            location = {"onplayer","atvendor"},
            prefix = "{gray}装备时赋予 30 级荆棘光环\n{white}与任意护身符和碎裂宝石合成以锻造：\n {red}稀有锻造材料\n"
        },
        {
            code = "an8",
            location = {"onplayer","atvendor"},
            prefix = "{Gold}装备时赋予 21 级信念光环\n{white}与任意护身符和碎裂宝石合成以锻造：\n {red}稀有锻造材料\n"
        },
        {
            code = "an9",
            location = {"onplayer","atvendor"},
            prefix = "{Blue}装备时赋予 15 级冥想光环\n{white}与任意护身符和碎裂宝石合成以锻造：\n {red}稀有锻造材料\n"
        },
        -- Highlighting Uniques/Sets
            {   
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7", --Normal Uniques
            rarity = "0",
            audio = "unique.mp3",
            border = {255,165,0,255},
            filter_levels = "1,2"
        },
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7", -- Exceptional Uniques
            rarity = "1",
            audio = "unique.mp3",
            border = {255,165,0,255},
            filter_levels = "1,2"
        },
        {
            codes = {"kgk","srk","fsk","kgl","02h", "0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7", -- Elite Uniques
            rarity = "2",
            audio = "unique.mp3",
            border = {255,165,0,255},
            filter_levels = "1,2,3"
        },
        {
            codes = {"rin","amu","zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "7", -- Unique Class Jewelry
            notify = "{red}*{green}*{blue} {gold}{name} {red}*{green}*{blue}",
            border = {255,0,0,255},
            audio = "other.mp3"
        },
        {
            codes = {"aq2","cq2","aqv","cqv","cq0","aq0"}, -- Arrows and Bolts
            quality = "7",
            notify = "{gold}暗金弹药：{name}",
            audio = "unique.mp3",
            border = {255,165,0,255}  
        },
        {
            codes = {"cm1","cm2","cm3","jew","cm4"}, -- Unique Jewels and Charms
            quality = "7",
            notify = "{red}*{green}*{blue} {gold}{name} {red}*{green}*{blue}",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {
            codes = "allitems", -- Set Items Normal
            quality = "5",
            rarity = "0",
            audio = "unique.mp3",
            border = {0,255,0,255},
            filter_levels = "1,2"
        },
        {
            codes = "allitems", -- Set Items Exceptional
            quality = "5",
            rarity = "1",
            audio = "unique.mp3",
            border = {0,255,0,255},
            filter_levels = "1,2"
        },
        {
            codes = "allitems", -- Set Items Elite
            quality = "5",
            rarity = "2",
            audio = "unique.mp3",
            border = {0,255,0,255},
            filter_levels = "1,2,3"
        },
        -- Display Base type for Uniques and Sets on the ground
        {
            codes = {"srk","fsk","kgk","kgl","02h","0ax", "0b0", "0b6", "0b7", "0ba", "0be", "0bk", "0bl", "0br", "0bs", "0bt", "0bw", "0cl", "0cm", "0cr", "0dg", "0di", "0fb", "0fc", "0fl", "0ga", "0gd", "0gi", "0gl", "0gm", "0gp", "0gs", "0gw", "0h0", "0ha", "0ja", "0kl", "0kr", "0la", "0ls", "0m0", "0ma", "0mn", "0mp", "0mt", "0nn", "0ns", "0p0", "0pa", "0pb", "0pi", "0qs", "0rd", "0rm", "0s8", "0s9", "0sb", "0sh", "0sm", "0sp", "0sr", "0ss", "0st", "0sy", "0ta", "0tk", "0tr", "0ts", "0vo", "0wa", "0wc", "0wd", "0wh", "0wn", "0ws", "0xb", "0yw", "1bs", "1cb", "1cs", "1hb", "1hx", "1l8", "1lb", "1ls", "1lw", "1lx", "1mx", "1rx", "1s8", "1sb", "1ss", "1sw", "1ws", "2ap", "2ar", "2ax", "2cl", "2ea", "2h9", "2hb", "2hg", "2hl", "2hm", "2hn", "2hs", "2it", "2kp", "2la", "2lb", "2ld", "2lg", "2lm", "2lt", "2mb", "2mg", "2ml", "2ng", "2ow", "2pk", "2pl", "2rg", "2rn", "2rs", "2sh", "2sk", "2tb", "2tg", "2th", "2tp", "2ts", "2tu", "2uc", "2ui", "2ul", "2vb", "2vg", "3hb", "3lb", "3mb", "3tb", "3vb", "4ap", "4ar", "4cl", "4ea", "4h9", "4hb", "4hg", "4hl", "4hm", "4hn", "4it", "4kp", "4la", "4lb", "4ld", "4lg", "4lm", "4lt", "4mb", "4mg", "4ml", "4ng", "4ow", "4pk", "4pl", "4rg", "4rn", "4rs", "4sh", "4sk", "4tb", "4tg", "4th", "4tp", "4ts", "4tu", "4uc", "4ui", "4ul", "4vb", "4vg", "5hb", "5lb", "5mb", "5sc", "5tb", "5vb", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wh", "7wn", "7ws", "7xf", "7yw", "82a", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9be", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gp", "9gs", "9gw", "9h9", "9ha", "9ja", "9kl", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mn", "9mp", "9mt", "9nj", "9nn", "9ns", "9p9", "9pa", "9pb", "9pi", "9qr", "9qs", "9rd", "9rm", "9s8", "9s9", "9sb", "9sc", "9sh", "9sm", "9sp", "9sr", "9ss", "9st", "9sy", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xb", "9xf", "9yw", "aar", "ahb", "alb", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "apb", "arm", "atb", "avb", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "bmb", "br2", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "bts", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "ci4", "cix", "clb", "clk", "clm", "clw", "cr2", "crn", "crs", "cst", "dbt", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "dwc", "eht", "elv", "fhl", "fla", "flb", "flc", "fld", "fts", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gsp", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "irg", "jav", "kit", "kkl", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mnb", "mpi", "msb", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "ned", "nee", "nef", "neg", "nin", "njt", "nrd", "nsy", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "p01", "p02", "p03", "p04", "p05", "p06", "p07", "p08", "p09", "p10", "p11", "p12", "p13", "p14", "p15", "p16", "p17", "p18", "p19", "p20", "p21", "p22", "p23", "p24", "p25", "p26", "p27", "p28", "p29", "p30", "p31", "p32", "p33", "p34", "p35", "p36", "p37", "p38", "p39", "p40", "p41", "p42", "p43", "p44", "p45", "p46", "p47", "p48", "p49", "p50", "p51", "p52", "p53", "p54", "p55", "p56", "p57", "p58", "p59", "p60", "p61", "p62", "p63", "p64", "p65", "p66", "p67", "p68", "p69", "p70", "p71", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pbe", "pik", "pil", "plt", "q00", "q01", "q02", "q03", "q04", "q05", "q06", "q07", "q08", "q09", "q10", "q11", "q12", "q13", "q14", "q15", "q16", "q17", "q18", "q19", "q1a", "q1b", "q1c", "q1d", "q1e", "q1f", "q20", "q21", "q22", "q23", "q24", "q25", "q26", "q27", "q28", "q29", "q2a", "q2b", "q2c", "q2d", "q2e", "q2f", "q30", "q31", "q32", "q33", "q34", "q35", "q36", "q37", "q38", "q39", "q3a", "q3b", "q3c", "q3d", "q3e", "q3f", "q40", "q41", "q42", "q43", "q44", "q45", "q46", "q47", "q48", "q49", "q4a", "q4b", "q4c", "q4d", "q4e", "q4f", "q50", "q51", "q52", "q53", "q54", "q55", "q56", "q57", "q58", "q59", "q60", "q61", "q62", "q63", "q64", "q65", "q66", "q67", "q68", "q69", "q70", "q71", "q72", "q73", "q74", "q75", "q76", "q77", "q78", "q79", "q80", "q81", "q82", "q83", "q84", "q85", "q86", "qba", "qbc", "qbd", "qbe", "qda", "qdb", "qdd", "qde", "qdf", "qi2", "qi3", "qna", "qne", "qnf", "qp9", "qpc", "qpe", "qui", "rng", "rob", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "shc", "shl", "skp", "skr", "sml", "sp2", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "syn", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xbt", "xcl", "xdw", "xea", "xft", "xh9", "xhb", "xhg", "xhh", "xhl", "xhm", "xhn", "xht", "xig", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlk", "xlm", "xlt", "xlv", "xmb", "xmg", "xml", "xms", "xng", "xow", "xpk", "xpl", "xrb", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "yap", "yar", "ybt", "ycl", "ydw", "yea", "yft", "yh9", "yhb", "yhg", "yhh", "yhl", "yhm", "yhn", "yht", "yig", "yit", "ykp", "yla", "ylb", "yld", "ylg", "ylk", "ylm", "ylt", "ylv", "ymb", "ymg", "yml", "yms", "yng", "yow", "ypk", "ypl", "yrb", "yrg", "yrn", "yrs", "ysh", "ysk", "ytb", "ytg", "yth", "ytp", "yts", "ytu", "yuc", "yui", "yul", "yvb", "yvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb"},
            quality = "7",
            name_override = "{grey}[{rarity}]{gold}{name}"
        },
        {
            codes = "allitems",
            quality = "5",
            name_override = "{grey}[{rarity}]{green}{name}"
        },
        -- Highlight Superior Mythical Bases
        {
            codes = {"m01","m02","m03","m04","m05","m06","m07","m08","m09","m10","m11","m12","m13","m14","m15","m16","m17","m18","m19","m20","m21","m22","m23","m24","m25","m26","m27","m28","m29","m30","m31","m32","m33","m34","m35","m36","m37","m38","m39"},
            quality = "3",
            border = {0,0,0,255},
            background = {0,50,50,255}
        },
        -- Mythical Uniques: Individual name strucutre for all mythicals to prevent clipping
        {
            code = "mrn",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "神射手之弓", 
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "au9",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "护身符",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m01",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "神射手之弓", 
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m02",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "奥德修斯弩",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m03",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "泰坦之槌",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m04",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "恶魔法杖",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m05",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "灵魂毁灭者",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m06",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "宝石甲",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m07",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "次元碎片",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m08",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "平衡匕首",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m09",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "魔法之刃",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m10",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "麻布指环",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m11",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "奥术法杖",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m12",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "炽天使权杖",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m13",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "剪刃苏威亚",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m14",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "仪式匕首",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m15",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "梦境之魂",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m16",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "细剑",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },    
        {
            code = "m17",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "天界权杖",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m18",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "死亡之刃",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m19",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "死亡之刃",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        }, 
        {
            code = "dd1",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "死亡之刃",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        }, 
        {
            code = "m20",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "权冠",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        }, 
        {
            code = "m21",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "剃刀斧",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m22",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "地狱火之剑",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m29",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "石化法杖",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },  
        {
            code = "m30",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "古代弓",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },  
        {
            code = "m31",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "女族长标枪",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m32",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "猎鲸者",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },  
        {
            code = "m33",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "古代碎片",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m34",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "橡木棍",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
                                                                                                                                                    
            audio = "mythical.mp3"
        },
        {
            code = "m35",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "天界之剑",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m36",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "法师法杖",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m37",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "武士刀",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m38",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            name_override = "亚瑞特短斧",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "m39",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "影切",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        {
            code = "mam",
            quality = "7",
            notify = "\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*\n{red}*{green}*{blue}*{purple}* {gold}神话暗金 {red}*{green}*{blue}*{purple}*\n{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}*{purple}*{red}*{green}*{blue}",
            name_style = "Rainbow Group",
            prefix = "神话 ",
            name_override = "护身符",
            background = {0, 0, 0, 255},
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        -- Coupon style and notification
        {
            codes = {"01c","02c","03c","04c","05c","06c","07c","08c","09c","10c","11c","12c","13c","14c","15c","16c","17c","18c","19c","20c","21c","22c","23c","24c","25c","26c","27c","28c","29c","30c","31c","32c","33c","34c","35c","36c","37c","38c","39c","40c","41c","42c","43c","44c","45c","46c","01f","02f","03f","04f","05f","06f","07f","08f","09f","10f","11f","12f","13f","14f","15f","16f","17f","18f","19f","20f","21f","22f","23f","24f","25f","26f","27f","28f","29f","30f","31f","32f","33f","34f","35f","36f","37f","38f","39f","40f","41f","42f","43f","44f","45f","46f","47f","48f","49f","50f","51f","52f","53f","54f","55f","56f","57f","58f","59f","60f","61f","62f","63f","64f","65f","66f","67f","68f","69f","70f","71f","01i","02i","03i","01j","02j","04j"},
            border = {255,165,0,255}, -- Normal Coupons
            name_override = "{gray}普通：{gold}{name}"
        },
        {
            codes = {"01d","02d","03d","04d","05d","06d","07d","08d","09d","10d","11d","12d","14d","15d","16d","17d","18d","19d","20d","21d","22d","23d","24d","25d","26d","27d","28d","29d","30d","31d","32d","33d","34d","35d","36d","37d","38d","39d","40d","41d","42d","43d","44d","45d","46d","47d","48d","49d","50d","01g","02g","03g","04g","05g","06g","07g","08g","09g","10g","11g","12g","13g","14g","15g","16g","17g","18g","19g","20g","21g","22g","23g","24g","25g","26g","27g","28g","29g","30g","31g","32g","33g","34g","35g","36g","37g","38g","39g","40g","41g","42g","43g","44g","45g","46g","47g","48g","49g","50g","51g","52g","53g","54g","55g","56g","57g","58g","59g","60g","61g","62g","63g","64g","65g","66g","67g","68g","69g","70g","71g","72g","73g","74g","75g","76g","77g","78g","05i","06i","07i","08i","05j","06j","07j","08j","04i"},
            border = {255,165,0,255}, -- Exceptional Coupons
            name_override = "{gray}扩展：{gold}{name}"
        },
        {
            codes = {"01e","02e","04e","05e","07e","08e","09e","10e","11e","12e","13e","14e","15e","16e","18e","19e","20e","21e","22e","23e","24e","25e","26e","27e","28e","29e","30e","31e","32e","33e","34e","35e","36e","37e","38e","39e","01h","02k","03h","04h","05h","06h","07h","08h","09h","10h","11h","12k","13h","14h","15h","16h","17h","18h","19h","20h","21h","22k","23h","24h","25h","26h","27h","28h","29h","30h","31h","32k","33h","34h","35h","36h","37h","38h","39h","40h","41h","42k","43h","44h","45h","47h","48h","49h","50h","51h","52k","53h","54h","55h","56h","57h","58h","59h","60h","61h","62k","09i","10i","11i","12i","09j","10j"},
            audio = "other.mp3", -- Elite Coupons
            border = {255,165,0,255},
            name_override = "{gray}精英：{gold}{name}",
            filter_levels = "3-"
        },
        {
            codes = {"01e","02e","04e","05e","07e","08e","09e","10e","11e","12e","13e","14e","15e","16e","18e","19e","20e","21e","22e","23e","24e","25e","26e","27e","28e","29e","30e","31e","32e","33e","34e","35e","36e","37e","38e","39e","01h","02k","03h","04h","05h","06h","07h","08h","09h","10h","11h","12k","13h","14h","15h","16h","17h","18h","19h","20h","21h","22k","23h","24h","25h","26h","27h","28h","29h","30h","31h","32k","33h","34h","35h","36h","37h","38h","39h","40h","41h","42k","43h","44h","45h","47h","48h","49h","50h","51h","52k","53h","54h","55h","56h","57h","58h","59h","60h","61h","62k","09i","10i","11i","12i","09j","10j"},
            border = {255,165,0,255}, -- Elite coupons for uber-strict without sound
            name_override = "{gray}精英：{gold}{name}",
            filter_levels = 4
        },
        -- S-Tier Coupons: SOJ, Death Fathom, Arachnid Mesh, Veil of Steel, Shako, Tyrael's Might, Verdungo's, Waterwalk
        {
            codes = {"03j", "46h", "41e", "03e", "17e", "40e","06e","13d"},
            audio = "tink.mp3",
            border = {255,0,0,255},
            background = {255,255,255,255}, 
            notify = "{red}高阶暗金兑换券：{name}",
            hide = false,
            filter_levels = "4-"
        },
        -- S-Tier Uniques
        {
            code = "ci3",
            quality = "7",
            audio = "tink.mp3",
            notify = "{orange}高阶暗金：{name}",
            background = {255,255,255,255},
            border = {255,0,0,255}
        },
        -- Highlight Class specific Magic/Rare Jewellery
        {
            codes = {"zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "4",
            notify = "职业首饰：{blue}{name}",
            border = {0,0,255,230}
        },
        {
            codes = {"zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "4",
            location = {"onplayer","atvendor"},
            suffix_desc = "{gray}可锻造：查看阿卡拉出售的完美宝石以确认配方{blue}\n"

        },
        {
            codes = {"zrn", "srn", "nrn", "prn", "brg", "drn", "arn", "zam", "sam", "nam", "pam", "bam", "dam", "aam"},
            quality = "6",
            border = {0,255,255,230}
        },
        -- Tooltip description for monster parts showing common drop locations
        {
            code = "hrt",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要在母牛关和地图中掉落\n 锻造材料\n"
        },
        {
            code = "brz",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第一幕沙漠跳跃者、第三幕鼠人和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "jaw",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第一幕骷髅弓箭手/黑暗游侠和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "eyz",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第四幕魔像、第五幕尼拉塞克领域和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "hrn",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第四幕巴洛格和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "tal",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第二幕女猎手、投石手和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "flg",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第一幕沉沦魔巫师和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "fng",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第二幕蜘蛛怪、古墓蝮蛇、沙丘野兽和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "qll",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第一幕尖刺老鼠、第三幕荆棘巨兽和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "sol",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由各幕鬼魂、幽魂、羊头人以及罂粟农场/地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "scz",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第五幕混沌避难所的末日骑士/深渊骑士、第一幕和第三幕尸巫领主以及地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "spe",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}主要由第三幕扎卡鲁姆信徒、第四幕督军/腐化者和地图怪物掉落\n 锻造材料\n"
        },
        {
            code = "zzz",
            location = "onplayer",
            prefix_desc = "{white}与多功能储存器合成以储存\n {purple}仅在秘密母牛关掉落。牛排配方请咨询戈登·拉姆齐\n 锻造材料\n"
        },
        -- Tooltip information and filtering for Uber Keys -
        {
            codes = {"pk1", "pk2", "pk3"},
            notify = "{red}混沌钥匙：{name}",
            background = {0, 0, 0, 200},
            border = {165, 55, 253, 255},
            audio = "gong.mp3"
        },
        {
            codes = {"pk1", "pk2", "pk3"},
            location = {"onplayer", "atvendor"},
            suffix_desc = "{white}与另外两把超级钥匙和 1 把普通钥匙合成，可制成混沌钥匙组：仅占 1x1 背包空间\n",
        },
        -- Tooltip information for Body Armor showing available 2 socket Runewords
        {
            codes = {"clk","xlk", "ylk","qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}炽热： {red}Tsu {gold}Ne {gray}等级：55{blue} \n{gray}审慎： {orange} Mal Tir {gray}等级：49{blue} \n{gray}迷雾： {green}Mo {red}Ya {gray}等级：47{blue} \n{gray}欺瞒： {yellow}Sa {orange}Wa{gray} 等级：38\n{gray}烟雾： {white}Nef {orange}Lem {gray}等级：37{blue} \n{gray}财富： {orange}To {red}Mi {gray}等级：36{blue}\n{gray}潜行： {white}Tal Eth {gray}等级：17{blue}\n{gray}黑暗： {red}Ya {red}Mi {gray}等级：15{blue}\n{gray}浓雾： {red}Ki {red}Ri {gray}等级：12{blue}\n{gray}黄金： {red}Ki N {gray}等级：10{blue}\n {gray}贪婪： {white}Yo Ku {gray}等级：9{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for Body Armor showing available 3 socket Runewords
        {
            codes = {"clk","xlk", "ylk","qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = "<=", value = 40 }, -- Char Level 40 or below
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}少女： {yellow}O {orange}To Me {gray}等级：36{blue}\n{gray}鲁莽： {red}Mi {Yellow}Sa {Orange}To {gray}等级：36{blue}\n{gray}赞颂： {orange}Ho {orange}Me {orange}Ru {gray}等级：34{blue}\n{gray}囚禁： {orange}Ho {red}Ri{white} Yo {gray}等级：31{blue}\n{gray}和平： {orange}Shael {white}Thul Amn {gray}等级：29{blue}\n{gray}急速： {white}Shael Ral Eld {gray}等级：29{blue}\n{gray}誓约： {red}Ki{white} Ka I {gray}等级：29{blue}\n{gray}神话： {orange}Hel{white} Amn Nef {gray}等级：25{blue}\n{gray}丰饶： {red}A{white} I Ka {gray}等级：17{blue}\n{gray}饥荒： {red}Ki Ki{white} N {gray}等级：10{blue}\n{gray}预感： {white}Yo Ka N {gray}等级：9{blue}\n{gray}进化： {white}Shi N Ka {gray}等级：6{blue}\n",
            sockets = "3",
        },
        {
            codes = {"clk","xlk","ylk","qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 41 }, -- Char Level 41 or above
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}谜团：{purple} Jah{white} Ith {purple}Ber {gray}等级：65{blue}\n{gray}飞龙：{purple}Sur Lo{orange} Sol {gray}等级：61{blue}\n{gray}夜衣： {orange}Ne {green}Ma {red}Ki {gray}等级：55{blue}\n{gray}狐： {red}Ki {red}Tsu {orange}Ne {gray}等级：55{blue}\n{gray}烟雾： {gold}Ke {orange}Mu {red}Ri {gray}等级：54{blue}\n{gray}原则： {white}Ral {purple}Gul{white} Eld {gray}等级：53{blue}\n{purple}雨： {white}Ort {purple}Mal{white} Ith {gray}等级：49{blue}\n{gray}强制： {orange}Shael {orange}Um{white} Thul {gray}等级：47{blue}\n{gray}白骨： {white}Sol {orange}Um {orange}Um {gray}等级：47{blue}\n{gray}日光： {green}Hi {orange}Ru {green}Ma {gray}等级：46{blue}\n{gray}不屈： {yellow}Ra{white} N{green}Ma {gray}等级：45{blue}\n{gray}丰盈： {orange}Ho{white} U{green}Fu {gray}等级：44{blue}\n{gray}和谐： {orange}Wa {green}Se{white} I {gray}等级：43{blue}\n{gray}太阳化石： {white}Ka {green}Se {red}Ki {gray}等级：43{blue}\n{gray}狮心： {orange}Hel {orange}Lum {orange}Fal {gray}等级：41{blue}\n",
            sockets = "3",
        },
        -- Tooltip information for Body Armor showing available 4 socket Runewords
        {
            codes = {"clk","xlk", "ylk","qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = "<=", value = 40 }, -- Char Level 40 or below
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}悲伤： {white}Ka {green}Na{white} Shi {red}Mi {gray}等级：40{blue}\n{gray}动物伙伴： {green}Na{white} U Shi Ka {gray}等级：40{blue}\n{gray}旅途： {red}Ri{white} Yo {orange}Ko{white} U {gray}等级：39{blue}\n{gray}健康： {yellow}Ke{white} N {orange}Ko{white} U {gray}等级：39{blue}\n{gray}幸运： {orange}Ko{white} U U U {gray}等级：39{blue}\n{gray}效率： {orange}Ko{white} U {red}Ri {red}Tsu {gray}等级：39{blue}\n{gray}辉煌： {red}A {yellow}Yu{white} Ka {orange}Wa {gray}等级：38{blue}\n{gray}信任： {white}Shi N Ra I {gray}等级：28{blue}\n{gray}永恒： {yellow}E{white} I {yellow}E{white} N {gray}等级：26{blue}\n{gray}美丽： {white}U {red}Tsu{white} Ku Shi {gray}等级：19{blue}\n{gray}疯狂： {red}Ki{white} Yo U {red}Ki {gray}等级：10{blue}\n",
            sockets = "4",
        },
        {
            codes = {"clk","xlk", "ylk","qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 41 }, -- Char Level 41 or above
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}荣耀之链： {orange}Dol {orange}Um {purple}Ber {purple}Ist {gray}等级：63{blue}\n{gray}荆棘： {white}Ral {purple}Ohm {purple}Sur{white} Eth {gray}等级：61{blue}\n{gray}金色圣甲虫： {orange}Ko {blue}Metal {gold}Mu{white} Shi {gray}等级：60{blue}\n{gray}刚毅： {white}El {orange}Sol {orange}Dol {purple}Lo {gray}等级：59{blue}\n{gray}变身： {purple}He{white} N Shi N {gray}等级：59{blue}\n{gray}未知： {red}Mi/Ri/Ki {red}Chi {purple}Su{white} U {gray}等级：57{blue}\n{gray}山猫： {red}Ya {green}Ma {gold}Ne {orange}Ko {gray}等级：55{blue}\n{gray}才能： {orange}Yu{white} U {gold}No{white} U {gray}等级：48{blue}\n{gray}疑问： {white}Shi {red}Tsu {green}Mo{white} N {gray}等级：47{blue}\n{gray}石块： {orange}Shael {orange}Um {orange}Pul {orange}Lum {gray}等级：47{blue}\n{gray}腹痛： {green}Fu{white} Ku {red}Tsu{white} U {gray}等级：44{blue}\n",
            sockets = "4",
        },
        -- Tooltip information for Body Armor showing available 5 socket Runewords
        {
            codes = {"clk","xlk", "ylk","qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}金色圣甲虫： {blue}Jewel {orange}Ko {blue}Metal {gold}Mu{white} Shi {gray}等级：60{blue}\n{gray}木制巨像： {blue}Wood {orange}Ko {gold}Ro {yellow}Sa {purple}Su {gray}等级：60{blue}\n{gray}地平线： {red}Chi {purple}He{white} I {green}Se{white} N {gray}等级：59{blue}\n{gray}筋斗云： Su {orange}Ha {yellow}Ra{white} Shi I {gray}等级：57{blue}\n{gray}天顶： {gold}Te{white} N {red}Chi{white} Yo U {gray}等级：50{blue}\n{gray}梨： {green}Hi {orange}To {gold}Te {green}Na{white} Shi {gray}等级：50{blue}\n{gray}凤凰： {green}Fu{white} Shi {red}Chi{white} Yo U {gray}等级：44{blue}\n{gray}狮心： {white}Ka I {yellow}O {green}Na{white} I {gray}等级：40{blue}\n{gray}骄傲： {orange}Ho {orange}Ko {yellow}Ra{white} Shi {yellow}Sa {gray}等级：39{blue}\n",
            sockets = "5",
        },
        -- Tooltip information for Body Armor showing available 6 socket Runewords
        {
            codes = {"clk","xlk", "ylk","qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "shl", "elv", "2ui", "2ea", "2la", "2tu", "2ng", "2cl", "2hn", "2rs", "2pl", "2lt", "br2", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xhh", "xlv", "4ui", "4ea", "4la", "4tu", "4ng", "4cl", "4hn", "4rs", "4pl", "4lt", "4ld", "4th", "4ul", "4ar", "4tp", "yui", "yea", "yla", "ytu", "yng", "ycl", "yhn", "yrs", "ypl", "ylt", "yld", "yth", "yul", "yar", "ytp", "yhh", "ylv", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "m06"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc = "{gray}金色圣甲虫： {blue}Jewel Jewel {orange}Ko {blue}Metal {gold}Mu{white} Shi {gray}等级：60{blue}\n{gray}洞察： {red}Mi {purple}Nu{white} Ku {red}Chi{white} Ka {yellow}Ra {gray}等级：60{blue}\n{gray}永恒统治： {gold}Te{white} N Ka {purple}Wo {orange}To {orange}Ru {gray}等级：60{blue}\n{gray}金龙： {red}Ki{white} N {gold}No {red}Ri {yellow}Yu{white} U {gray}等级：48{blue}\n{gray}暗星： {green}Hi{white} Ka {red}Ri {gold}No {orange}Ke{white} N {gray}等级：48{blue}\n{gray}勇气： {white}Ka {red}Mi {red}Ya {orange}Ta{white} I {red}Chi {gray}等级：35{blue}\n{gray}升腾： {white}Shi Yo {red}Ri {yellow}Yu {yellow}Ke{white} N {gray}等级：24{blue}\n",
            sockets = "6",
        },
        -- Tooltip information for Gloves showing available 2 socket Runewords
        {
            codes = {"2hg","2lg","2mg","2tg","4hg","4lg","4mg","4tg","hgl","irg","lgl","mgl","tgl","ulg","umg","utg","vhg","vgl","xhg","xig","xlg","xmg","xtg","ylg","yhg","yig","ymg","ytg","uvg","vg1"},
            runeword = false,
            quality = "3-",
            location = {"onplayer", "atvendor", "equipped"},
            suffix_desc ="{gray}沼泽： {purple}Nu {green}Ma {gray}等级：60{blue}\n{gray}迷雾： {green}Mo {red}Ya {gray}等级：47{blue}\n{gray}舞蹈： {green}Ma {white}I {gray}等级：45{blue}\n{gray}权威： {yellow}Ke {green}Ni {gray}等级：42{blue}\n{gray}春： {orange}Ha Ru {gray}等级：39{blue}\n{gray}欺瞒： {yellow}Sa {orange}Wa {gray}等级：38{blue}\n{gray}财富： {orange}To {red}Mi {gray}等级：36{blue}\n{gray}雨： {red}A {orange}Me {gray}等级：32{blue}\n{gray}梦境： {yellow}Yu {orange}Me {gray}等级：32{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for Belts showing available 2 socket Runewords
        {
            codes = {"lbl","vbl","mbl","tbl","hbl","msb","3lb","3vb","3mb","3tb","3hb","zlb","zvb","zmb","ztb","zhb","xms","5lb","5vb","5mb","5tb","5hb","alb","avb","bmb","atb","ahb","yms","ulc","uvc","umc","utc","uhc","m10"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc ="{gray}肚脐： {purple}He {gold}So: {gray}: 等级：59\n {gray}迷雾： {green}Mo {red}Ya {gray}等级：47{blue}\n{gray}舞蹈： {green}Ma{white} I: {gray}等级：45{blue}\n{gray}春： {orange}Ha {orange}Ru {gray}等级：39{blue}\n{gray}财富： {orange}To {red}Mi {gray}等级：36{blue}\n{gray}雨： {red}A {orange}Me {gray}等级：32{blue}\n{gray}梦境： {yellow}Yu {orange}Me {gray}等级：32{blue}\n{gray}秋： {red}A {red}Ki {gray}等级：17{blue}\n{gray}黄金： {red}Ki{white} N {gray}等级：10{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for Boots showing available 2 socket Runewords
        {
            codes = {"lbt","vbt","mbt","tbt","hbt","dbt","2lb","2vb","2mb","2tb","2hb","xlb","xvb","xmb","xtb","xhb","xbt","4lb","4vb","4mb","4tb","4hb","ylb","yvb","ymb","ytb","yhb","ybt","ulb","uvb","umb","utb","uhb"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}恶臭： {purple}Su {gold}Ne {gray}等级：57{blue}\n{gray}迷雾： {green}Mo {red}Ya {gray}等级：47{blue}\n{gray}旅程： {orange}Ta {green}Hi {gray}等级：46{blue}\n{gray}舞蹈： {green}Ma{white} I {gray}等级：45{blue}\n{gray}夏： {green}Na {red}Tsu {gray}等级：40{blue}\n{gray}春： {orange}Ha {orange}Ru {gray}等级：39{blue}\n{gray}雨： {red}A {orange}Me {gray}等级：32{blue}\n{gray}踢击： {yellow}Ke {red}Ri {gray}等级：24{blue}\n{gray}秋： {red}A {red}Ki {gray}等级：17{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for all Helms showing available 2 socket Runewords
        {
            codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "dwc", "2ap", "2kp", "2lm", "2hl", "2hm", "2rn", "2sk", "2h9", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xh9", "xdw", "4ap", "4kp", "4lm", "4hl", "4hm", "4rn", "4sk", "4h9", "yap", "ykp", "ylm", "yhl", "yhm", "yrn", "ysk", "yh9", "ydw", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uh9", "dr3", "dr4", "dr5", "dr1", "dr2", "dr8", "dr9", "dra", "dr6", "dr7", "drd", "dre", "drf", "drb", "drc", "qda", "qdb", "eht", "xht", "yht", "ba3", "ba4", "ba5", "ba1", "ba2", "ba8", "ba9", "baa", "ba6", "ba7", "bad", "bae", "baf", "bab", "bac", "qba", "qbc", "qbd", "qbe", "cix", "ci0", "ci4", "ci1", "ci2", "ci3", "qi2", "qi3", "m20"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}鹰： {orange}Ta{white} Ka {gray}等级：35{blue}\n{gray}梦境： {yellow}Yu {red}Me {gray}等级：32{blue}\n{gray}学识： {white}Ort Sol {gray}等级：27{blue}\n{gray}智慧： {red}Chi {yellow}E {gray}等级：26{blue}\n{gray}天底： {white}Nef Tir {gray}等级：13{blue}\n{gray}冥界： {white}Yo {red}Mi {gray}等级：13{blue}\n{gray}狩猎： {white}Ka {red}Ri {gray}等级：12{blue}\n{gray}浓雾： {red}Ki {red}Ri {gray}等级：12{blue}\n{gray}贪婪： {white}Yo Ku {gray}等级：9{blue}\n{gray}感觉： {white}Ka N {gray}等级：6{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for all Helms showing available 3 socket Runewords
        {
            codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "dwc", "2ap", "2kp", "2lm", "2hl", "2hm", "2rn", "2sk", "2h9", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xh9", "xdw", "4ap", "4kp", "4lm", "4hl", "4hm", "4rn", "4sk", "4h9", "yap", "ykp", "ylm", "yhl", "yhm", "yrn", "ysk", "yh9", "ydw", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uh9", "dr3", "dr4", "dr5", "dr1", "dr2", "dr8", "dr9", "dra", "dr6", "dr7", "drd", "dre", "drf", "drb", "drc", "qda", "qdb", "eht", "xht", "yht", "ba3", "ba4", "ba5", "ba1", "ba2", "ba8", "ba9", "baa", "ba6", "ba7", "bad", "bae", "baf", "bab", "bac", "qba", "qbc", "qbd", "qbe", "cix", "ci0", "ci4", "ci1", "ci2", "ci3", "qi2", "qi3", "m20"},
            runeword = false,
            quality = "3-",
            pstat = { index = 12, op = "<=", value = 44 }, -- Char Level 39 or lower
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}少女： {yellow}O {orange}To {orange}Me {gray}等级：36{blue}\n{gray}嫉妒： {white}Shi {red}Tsu {orange}To {gray}等级：36{blue}\n{gray}脾气： {orange}Shael{white} Io Ral {gray}等级：35{blue}\n{gray}大地： {orange}Shael{white} Io Ral {gray}等级：35{blue}\n{gray}大地： {orange}Shael{white} Io Thul {gray}等级：35{blue}\n{gray}治愈： {orange}Shael{white} Io Tal {gray}等级：35{blue}\n{gray}壁垒： {orange}Shael{white} Io Sol {gray}等级：35{blue}\n{gray}财富网： {yellow}P.Topaz {orange}Ru {yellow}P.Topaz {gray}等级：34{blue}\n{gray}灵能： {red}A {red}Ki {yellow}Ra {gray}等级：28{blue}\n{gray}樱花： {yellow}Sa{white} Ku{yellow}Ra {gray}等级：28{blue}\n{gray}光辉： {white}Nef Sol Ith {gray}等级：27{blue}\n{gray}王权： {red}A {yellow}E{white} Ka {gray}等级：26{blue}\n{gray}理性： {red}Ri {yellow}Yu{white} U {gray}等级：23{blue}\n{gray}知识： {red}Chi{white} Shi {red}Ki {gray}等级：20{blue}\n{gray}预感： {white}Yo Ka N {gray}等级：9{blue}\n",
            sockets = "3"
        },
        {
            codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "dwc", "2ap", "2kp", "2lm", "2hl", "2hm", "2rn", "2sk", "2h9", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xh9", "xdw", "4ap", "4kp", "4lm", "4hl", "4hm", "4rn", "4sk", "4h9", "yap", "ykp", "ylm", "yhl", "yhm", "yrn", "ysk", "yh9", "ydw", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uh9", "dr3", "dr4", "dr5", "dr1", "dr2", "dr8", "dr9", "dra", "dr6", "dr7", "drd", "dre", "drf", "drb", "drc", "qda", "qdb", "eht", "xht", "yht", "ba3", "ba4", "ba5", "ba1", "ba2", "ba8", "ba9", "baa", "ba6", "ba7", "bad", "bae", "baf", "bab", "bac", "qba", "qbc", "qbd", "qbe", "cix", "ci0", "ci4", "ci1", "ci2", "ci3", "qi2", "qi3", "m20"},
            runeword = false,
            quality = "3-",
            pstat = {index = 12, op = ">=", value = 45}, -- Char Level 40 or higher
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}变形： {orange}Io {purple}Cham {orange}Fal {gray}等级：67{blue}\n{gray}梦境： {orange}Io {purple}Jah {orange}Pul {gray}等级：65{blue}\n{gray}和平： He{white} I {orange}Wa {gray}等级：59{blue}\n{gray}不满： {green}Fu {purple}He{white} I {gray}等级：59{blue}\n{gray}舍弃： {purple}Su {gold}Te {orange}Ru {gray}等级：57{blue}\n{gray}摇曳火焰： {white}Nef {orange}Pul {purple}Vex {gray}等级：55{blue}\n{gray}思绪： {white}Shi {gold}So{white} U {gray}等级：52{blue}\n{gray}精神： {orange}Ko {orange}Ko {gold}Ro {gray}等级：51{blue}\n{gray}迪勒瑞姆： {orange}Lem {orange}Ist {orange}Io {gray}等级：51{blue}\n{gray}光辉： {green}Hi{white} Ka {orange}Ru {gray}等级：46{blue}\n{gray}唯一： {green}Hi {orange}To {red}Tsu {gray}等级：46{blue}\n{gray}智慧： {orange}Pul{white} Ith Eld {gray}等级：45{blue}\n",
            sockets = "3"
        },
        -- Tooltip information for all Shields showing avaiable 2 socket Runewords
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}灿烂： {white}Eth {orange}Lum {gray}等级：37{blue}\n{gray}韵律： {orange}Shael{white} Eth {gray}等级：29{blue}\n{gray}犀牛： {yellow}Sa{white} I {gray}等级：22{blue}\n{gray}黄金： {red}Ki{white} N {gray}等级：10{blue}\n{gray}幸运： {white}U N {gray}等级：6{blue}\n",
            sockets = "2"
        },
        -- Tooltip information for all Shields showing avaiable 3 socket Runewords
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            pstat = {index = 12, op = "<=", value = 49}, -- Char Level 49 or lower
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}圣堂： {orange}Ko {orange}Ko {purple}Mal {gray}等级：49{blue}\n{gray}樵夫： {red}Ki {orange}Ko {red}Ri {gray}等级：39{blue}\n{gray}日光： {green}Hi {orange}Ru {green}Ma {gray}等级：46{blue}\n{gray}晴朗： {yellow}Sa {green}Ni {white}I {gray}等级：43{blue}\n{gray}秘密： {white}Shi {green}Ni {orange}Ti {gray}等级：42{blue}\n{gray}信仰之柱： {orange}Ha {white}Shi {yellow}Ra {gray}等级：39{blue}\n{gray}征服： {white}Shi Shi {yellow}O {gray}等级：30{blue}\n{gray}古代人的契约： {white}Ral Ort Tal {gray}等级：21{blue}\n",
            sockets = "3"
        },
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            pstat = {index = 12, op = ">=", value = 50}, -- Char Level 50 or higher
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}梦境： {orange}Io {purple}Jah {orange}Pul {gray}等级：65{blue}\n{gray}飞龙： Sur Lo {white}Sol {gray}等级：61{blue}\n{gray}阳光： {blue}Sun {orange}Ko {white}U {gray}等级：60{blue}\n{gray}闪避： {white}Ka {orange}Wa {purple}Su {gray}等级：57{blue}\n{gray}舍弃： {purple}Su {gold}Te {orange}Ru {gray}等级：57{blue}\n{gray}裂隙： {red}Ki {gold}Re {red}Tsu {gray}等级：56{blue}\n",
            sockets = "3"
        },
        -- Tooltip information for all Shields showing avaiable 4 socket Runewords
        {
            codes = {"buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "fts", "2uc", "2ml", "2rg", "2it", "2ow", "2ts", "2sh", "2pk", "sp2", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk", "xft", "4uc", "4ml", "4rg", "4it", "4ow", "4ts", "4sh", "4pk", "yuc", "yml", "yrg", "yit", "yow", "yts", "ysh", "ypk", "yft", "uuc", "uml", "urg", "uit", "uow", "uts", "ush", "upk", "pa1", "pa3", "pa4", "pa5", "pa2", "pa6", "pa8", "pa9", "paa", "pa7", "pab", "pad", "pae", "pae", "paf", "qp9", "qpc", "qpc", "qpe", "ne1", "ne2", "ne3"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            suffix_desc = "{gray}凤凰： {purple}Vex Vex Lo Jah {gray}等级：65{blue}\n{gray}恐惧： {yellow}O {gold}So Re {orange}Ru {gray}等级：56{blue}\n{gray}穹顶： {green}Ma {orange}Ru {red}Ya {gold}Ne {gray}等级：55{blue}\n{gray}药： {red}Ya {white}Ku {green}Hi {white}N {gray}等级：46{blue}\n{gray}荣耀： {yellow}E {white}I {orange}Ko {white}U {gray}等级：39{blue}\n{gray}信念： {white}Shi N {orange}Ko {white}U {gray}等级：39{blue}\n{gray}诱惑： {yellow}Wa {white}U {orange}Wa {white}Ku {gray}等级：38{blue}\n{gray}达成： {white}Ka {red}Chi {orange}To Ru {gray}等级：36{blue}\n{gray}精神： {white}Tal Thul Ort Amn {gray}等级：25{blue}\n{gray}堡垒： {white}Yo U {yellow}Sa {white}I {gray}等级：22{blue}\n{gray}美丽： {white}U {red}Tsu {white}Ku Shi {gray}等级：19{blue}\n",
            sockets = "4"
        },
        -- Tooltip information for all 2H Swinging Weapon 2 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi","njt","9nj","0nn","m37","arm","9rm","0rm","pbe","9be","0be","m35","mnb","9mn","0mn","m09","sst","lst","cst","bst","wst","p55","p56","p57","p58","p59","8ss","8ls","8cs","8bs","8ws","q54","q55","q56","q57","q58","1ss","1ls","1cs","1bs","1ws","6ss","6ls","6cs","6bs","6ws","m29","m36","m11","2hs","clm","gls","bsw","flb","gsd","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","9cm","9gs","9b9","9fb","9gd","q33","q34","q35","q36","q37","q38","a2a","q2b","q2c","q2d","q2e","a2f","0cm","0gs","0b0","0fb","0gd","72h","7cm","7gs","7b7","7fb","7gd","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m16","m22","m22","m18","dd1"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "2",
            suffix_desc = "{gray}死神： {blue}死神 {gray}等级：60{blue}\n"
        },
        -- Tooltip information for all 2H Swinging Weapon 4 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi","njt","9nj","0nn","m37","arm","9rm","0rm","pbe","9be","0be","m35","mnb","9mn","0mn","m09","sst","lst","cst","bst","wst","p55","p56","p57","p58","p59","8ss","8ls","8cs","8bs","8ws","q54","q55","q56","q57","q58","1ss","1ls","1cs","1bs","1ws","6ss","6ls","6cs","6bs","6ws","m29","m36","m11","2hs","clm","gls","bsw","flb","gsd","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","9cm","9gs","9b9","9fb","9gd","q33","q34","q35","q36","q37","q38","a2a","q2b","q2c","q2d","q2e","a2f","0cm","0gs","0b0","0fb","0gd","72h","7cm","7gs","7b7","7fb","7gd","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m16","m22","m22","m18","dd1"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "4",
            suffix_desc = "{gray}旋风： {red}Tsu {gold}Mu {white}Shi {blue}风 {gray}等级：60\n{gray}自然王国： {green}Mo {gold}No No {yellow}Ke {gray}等级：48{blue}\n"
        },
        -- Tooltip information for all 2H Swinging Weapon 5 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi","njt","9nj","0nn","m37","arm","9rm","0rm","pbe","9be","0be","m35","mnb","9mn","0mn","m09","sst","lst","cst","bst","wst","p55","p56","p57","p58","p59","8ss","8ls","8cs","8bs","8ws","q54","q55","q56","q57","q58","1ss","1ls","1cs","1bs","1ws","6ss","6ls","6cs","6bs","6ws","m29","m36","m11","2hs","clm","gls","bsw","flb","gsd","p34","p35","p36","p37","p38","p39","q1a","q1b","q1c","q1d","q1e","q1f","9cm","9gs","9b9","9fb","9gd","q33","q34","q35","q36","q37","q38","a2a","q2b","q2c","q2d","q2e","a2f","0cm","0gs","0b0","0fb","0gd","72h","7cm","7gs","7b7","7fb","7gd","q3a","q3b","q3c","q3d","q3e","q3f","q4a","q4b","q4c","q4d","q4e","q4f","m16","m22","m22","m18","dd1"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "5",
            suffix_desc = "{gray}神之造物 {blue}神 {gold}No {red}Mi {orange}Wa {yellow}Sa {gray}等级：60\n大地之力： {red}Chi {white}Ka {yellow}Ra {gold}No {blue}大地 {gray}等级：60\n悔恨： {white}Eth Tir {purple}Lo Mal {white}Ral {gray}等级：59\n狂热： {green}Ma Ni {red}A Tsu {white}Ku {gray}等级：45{blue}\n"
        },
        -- Tooltip information for all 2h Axe 6 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "6",
            suffix_desc = "{gray}最后希望： {purple}Jah Mal Jah Sur Jah Ber {gray}等级：65{blue}\n"
        },
        -- Tooltip information for all 2h Axe 5 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "5",
            suffix_desc = "{gray}末日： {orange}Hel {purple}Ohm {orange}Um {purple}Lo Cham {gray}等级：67\n{gray}野兽： {purple}Ber {white}Tir {orange}Um {purple}Mal {orange}Lum {gray}等级："
        },
        -- Tooltip information for all Axe 4 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi","hax","axe","2ax","mpi","wax","p01","p02","p03","p04","po5","p06","po7","po8","po9","p10","9ha","9ax","92a","9mp","9wa","qoo","q01","q02","q03","q04","0ha","0ax","82a","0mp","0wa","7ha","7ax","72a","7mp","7wa","m21"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "4",
            suffix_desc = "{gray}饥荒： {orange}Fal {purple}Ohm {white}Ort {purple}Jah {gray}等级：65\n弑王者： {purple}Mal {orange}Um {purple}Gul {orange}Fal {gray}等级：53\n誓约： {orange}Shael Pul {purple}Mal {orange}Lum {gray}等级：49\n冻伤： {white}Shi {green}Mo {red}Ya {yellow}Ke {gray}等级：47\n饥饿： {white}Ku U {green}Fu {white}Ku {gray}等级：44\n酸蚀 {yellow}Sa {white}N {green}Se {white}I {gray}等级：43\n律法： {orange}Ho {white}U {red}Ri Tsu {gray}等级：31\n鲜血 {yellow}Ke {red}Tsu {yellow}E {red}Ki {gray}等级：26{blue}\n"
        },
        -- Tooltip information for all Axe 3 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi","hax","axe","2ax","mpi","wax","p01","p02","p03","p04","po5","p06","po7","po8","po9","p10","9ha","9ax","92a","9mp","9wa","qoo","q01","q02","q03","q04","0ha","0ax","82a","0mp","0wa","7ha","7ax","72a","7mp","7wa","m21"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "3",
            suffix_desc = "{gray}新月： {orange}Shael Um {white}Tir {gray}等级：47\n屠夫 {green}Ni {white}Ku {red}Ya {gray}等级：42\n光明： {red}A {white}Ka {red}Ri {gray}等级：17{blue}\n"
        },
        -- Tooltip information for all Axe 2 socket Runewords
        {
            codes = {"lax","bax","btx","gax","gix","p06","p07","p08","p09","p10","9la","9ba","9bt","9ga","9gi","q05","q06","q07","q08","q09","0la","0ba","0bt","0ga","0gi","7la","7ba","7bt","7ga","7gi","hax","axe","2ax","mpi","wax","p01","p02","p03","p04","po5","p06","po7","po8","po9","p10","9ha","9ax","92a","9mp","9wa","qoo","q01","q02","q03","q04","0ha","0ax","82a","0mp","0wa","7ha","7ax","72a","7mp","7wa","m21"},
            runeword = false,
            quality = "3-",
            location = {"onplayer","atvendor","equipped"},
            sockets = "2",
            suffix_desc = "边缘 {green}Fu {red}Chi {gray}等级：44\n钢铁： {white}Tir El {gray}等级：13{blue}\n"
        },
        -- Monster Part Styling
        {
            codes = {"qll", "hrt", "brz", "jaw", "eyz", "hrn", "tal", "flg", "fng","sol", "scz", "spe", "zzz"},
            location = "onground",
            border = {200, 150, 0, 255}
        },
        -- Crystal Styling
        {
            codes = {"xl1","xl2","xl3","xl4","xl5","xl6","xl7","xl8","xl9","xlx","xly"},
            border = {200, 150, 0, 255}
        },
        -- Perfect Gem Styling
        {
            code = "gvb",
            border = {200, 150, 0, 255},
            name_override = "{purple}{name}",
            filter_levels = "4"
        },
        {
            code = "gyb",
            border = {200, 150, 0, 255},
            name_override = "{yellow}{name}",
            filter_levels = "4"
        },
        {
            code = "gbb",
            border = {200, 150, 0, 255},
            name_override = "{blue}{name}",
            filter_levels = "4"
        },
        {
            code = "ggb",
            border = {200, 150, 0, 255},
            name_override = "{green}{name}",
            filter_levels = "4"
        },
        {
            code = "grb",
            border = {200, 150, 0, 255},
            name_override = "{red}{name}",
            filter_levels = "4"
        },
        {
            code = "gwb",
            border = {200, 150, 0, 255},
            name_override = "{white}{name}",
            filter_levels = "4"
        },
        {
            code = "skb",
            border = {200, 150, 0, 255},
            name_override = "{gray}{name}",
            filter_levels = "4"
        },
        {
            code = "gbk",
            border = {200, 150, 0, 255},
            name_override = "{black}{name}",
            filter_levels = "4"
        },
        -- In game notification for all high LOD rune drops
            {   
            code = "23l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Mal  {red}*{blue}*{green}*",
            name_override = "{black}Mal Rune",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        {   
            code = "24l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Ist  {red}*{blue}*{green}*",
            name_override = "{black}Ist Rune",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        {   
            code = "25l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Gul  {red}*{blue}*{green}*",
            name_override = "{black}Gul Rune",
            border = {0, 0, 0, 255},
            background = {200, 150, 0, 255},
            audio = "mid.mp3"
        },
        {   
            code = "26l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Vex  {red}*{blue}*{green}*",
            name_override = "{red}Vex Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "27l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Ohm  {red}*{blue}*{green}*",
            name_override = "{red}Ohm Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "28l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Lo  {red}*{blue}*{green}*",
            name_override = "{red}Lo Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "29l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Sur  {red}*{blue}*{green}*",
            name_override = "{red}Sur Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "30l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Ber  {red}*{blue}*{green}*",
            name_override = "{red}Ber Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "31l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Jah  {red}*{blue}*{green}*",
            name_override = "{red}Jah Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "32l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Cham  {red}*{blue}*{green}*",
            name_override = "{red}Cham Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "33l",
            notify = "{red}*{blue}*{green}*   {orange}高级符文掉落：{white}Zod  {red}*{blue}*{green}*",
            name_override = "{red}Zod Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "mythical.mp3"
        },
        -- In game notification for all high ES rune drops (Gold + Purple)   
        {
            codes = {"r36","r37","r38","r39","r40","r41","r42"},
            notify = "{red}金色符文掉落{gold}：{name}",
            border = {255,215,0,255},
            background = {0,0,0,255},
            audio = "mid.mp3"
        },
        {   
            code = "r43",
            notify = "{orange}紫色东日符文：{purple}Su",
            name_override = "{purple}Su Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r44",
            notify = "{orange}紫色东日符文：{purple}He",
            name_override = "{purple}He Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r45",
            notify = "{orange}紫色东日符文：{purple}Nu",
            name_override = "{purple}Nu Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r46",
            notify = "{orange}紫色东日符文：{purple}Wo",
            name_override = "{purple}Wo Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        {   
            code = "r50",
            notify = "{orange}紫色东日符文：{purple}Null",
            name_override = "{purple}Null Rune",
            background = {255, 255, 255, 255 },
            border = {240, 0, 0, 230, 2},
            audio = "tink.mp3"
        },
        -- Tooltips for Rune and Decal Stocker
        {
            codes = {"s01","s02","s03","s04","s05","s06","s07","s08","s09","s10","s11","s12","s13","s14","s15","s16","s17","s18","s19","s20","s21","s22","s23","s24","s25","s26","s27","s28","s29","s30","s31","s32","s33","s34","s35","s36","s37","s38","s39","s40","s41","s42","s43","s44","s45","s46","s47","s48","s49","s50","s51","s52","s53","s54","s55","s56","s57","s58","s59","s60","s61","s62","s63","s64","s65","s66","s67","s68","s69","s70","s71","s72","s73","s74","s75","s76","s77","s78","s79","s80","s81","s82","s83"},
            location = {"onplayer","atvendor","onground"},
            suffix_desc = "\n{gray}与{red}辨识卷轴{gray}合成可转换为更高阶点数\n与{blue}回城卷轴{gray}合成可转换为更低阶点数\n"
        },
        -- Tooltip for Kanji runes on Null rune - Ty boggins and Kitzun
            {   
            code = "r50",
            location = {"onplayer","atvendor"},
            prefix = "\n神符文：{blue}冰冻灵魂 {red}神秘朱砂 {gold}脉动蛋白石 {gray}暗影石英\n{orange}天堂符文：{red}流血石 {blue}深色蓝铜矿 {dark green}苦橄榄石 {purple}污秽碧玺{white}\n{orange}死亡符文：{gray}暗影石英{white}\n{orange}生命符文：{gold}脉动蛋白石\n{orange}龙符文：风暴琥珀\n风符文：{purple}污秽碧玺\n{orange}雷符文：{yellow}燃烧硫磺\n{orange}日符文：{red}神秘朱砂\n{orange}地符文：{dark green}苦橄榄石\n{orange}金符文：{white}固态水银\n{orange}木符文：{green}墓穴翡翠\n{orange}水符文：{blue}深色蓝铜矿\n{orange}火符文：{red}流血石\n{orange}月符文：{blue}冰冻灵魂\n{white}将此符文与下列水晶合成以获得汉字符文{purple}\n"
        },
        -- Maps Tier 1
            {   
            code = "z01",
            notify = "1 阶地图：{white}痛苦地窖",
            name_override = "痛苦地窖（1 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z02",
            notify = "1 阶地图：{white}恐怖裂谷",
            name_override = "恐怖裂谷（1 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z03",
            notify = "1 阶地图：{white}诅咒墓穴",
            name_override = "诅咒墓穴（1 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z04",
            notify = "1 阶地图：{white}亡者之城",
            name_override = "亡者之城（1 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 2
            {   
            code = "z05",
            notify = "2 阶地图：{white}古代墓穴",
            audio = "map.mp3",
            name_override = "古代墓穴（2 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z06",
            notify = "2 阶地图：{white}混沌裂隙",
            audio = "map.mp3",
            name_override = "混沌裂隙（2 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z07",
            notify = "2 阶地图：{white}感染巢穴",
            audio = "map.mp3",
            name_override = "感染巢穴（2 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z08",
            notify = "2 阶地图：{white}苦痛迷宫",
            audio = "map.mp3",
            name_override = "苦痛迷宫（2 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 3
            {   
            code = "z09",
            notify = "3 阶地图：{white}腐朽深渊",
            audio = "map.mp3",
            name_override = "腐朽深渊（3 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z10",
            notify = "3 阶地图：{white}无尽深渊",
            audio = "map.mp3",
            name_override = "无尽深渊（3 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z11",
            notify = "3 阶地图：{white}冰封荒原",
            audio = "map.mp3",
            name_override = "冰封荒原（3 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z12",
            notify = "3 阶地图：{white}扭曲迷宫",
            audio = "map.mp3",
            name_override = "扭曲迷宫（3 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 4
            {   
            code = "z13",
            notify = "4 阶地图：{white}诅咒藏骨堂",
            audio = "map.mp3",
            name_override = "诅咒藏骨堂（4 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z14",
            notify = "4 阶地图：{white}炼狱枢纽",
            audio = "map.mp3",
            name_override = "炼狱枢纽（4 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z15",
            notify = "4 阶地图：{white}灵魂圣匣",
            audio = "map.mp3",
            name_override = "灵魂圣匣（4 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        {   
            code = "z16",
            notify = "4 阶地图：{white}毁灭神殿",
            audio = "map.mp3",
            name_override = "{white}毁灭神殿（4 阶）",
            border = {255,255,255,255},
            background = {0,0,0,255}
        },
        -- Tier 5
            {   
            code = "z17",
            notify = "5 阶地图：{white}风暴之眼",
            audio = "t5_map.mp3",
            name_override = "{black}风暴之眼",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        {   
            code = "z18",
            notify = "5 阶地图：{white}冰冠堡垒",
            audio = "t5_map.mp3",
            name_override = "{black}冰冠堡垒",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        {   
            code = "z19",
            notify = "5 阶地图：{white}亡者圣所",
            audio = "t5_map.mp3",
            name_override = "{black}亡者圣所",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        {   
            code = "z20",
            notify = "5 阶地图：{white}伪光圣匣",
            audio = "t5_map.mp3",
            name_override = "{black}伪光圣匣",
            border = {0,0,0,255},
            background = {255,255,255,255}
        },
        -- Tooltips on ESR Runes (Thanks to Quan + Squid)
        {
            code="r01",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 白色符文点（装袋时）{orange}\n"
        },
        {
            code="r02",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 白色符文点（装袋时）{orange}\n"
        },
        {
            code="r03",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 白色符文点（装袋时）{orange}\n"
        },
        {
            code="r04",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 白色符文点（装袋时）{orange}\n"
        },
        {
            code="r05",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 白色符文点（装袋时）{orange}\n"
        },
        {
            code="r06",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 白色符文点（装袋时）{orange}\n"
        },
        {
            code="r07",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 白色符文点（装袋时）{orange}\n"
        },
        {
            code="r08",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 红色符文点（装袋时）{orange}\n"
        },
        {
            code="r09",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 红色符文点（装袋时）{orange}\n"
        },
        {
            code="r10",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 红色符文点（装袋时）{orange}\n"
        },
        {
            code="r11",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 红色符文点（装袋时）{orange}\n"
        },
        {
            code="r12",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 红色符文点（装袋时）{orange}\n"
        },
        {
            code="r13",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 红色符文点（装袋时）{orange}\n"
        },
        {
            code="r14",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 红色符文点（装袋时）{orange}\n"
        },
        {
            code="r15",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 黄色符文点（装袋时）{orange}\n"
        },
        {
            code="r16",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 黄色符文点（装袋时）{orange}\n"
        },
        {
            code="r17",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 黄色符文点（装袋时）{orange}\n"
        },
        {
            code="r18",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 黄色符文点（装袋时）{orange}\n"
        },
        {
            code="r19",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 黄色符文点（装袋时）{orange}\n"
        },
        {
            code="r20",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 黄色符文点（装袋时）{orange}\n"
        },
        {
            code="r21",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 黄色符文点（装袋时）{orange}\n"
        },
        {
            code="r22",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 橙色符文点（装袋时）{orange}\n"
        },
        {
            code="r23",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 橙色符文点（装袋时）{orange}\n"
        },
        {
            code="r24",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 橙色符文点（装袋时）{orange}\n"
        },
        {
            code="r25",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 橙色符文点（装袋时）{orange}\n"
        },
        {
            code="r26",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 橙色符文点（装袋时）{orange}\n"
        },
        {
            code="r27",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 橙色符文点（装袋时）{orange}\n"
        },
        {
            code="r28",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 橙色符文点（装袋时）{orange}\n"
        },
        {
            code="r29",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 绿色符文点（装袋时）{orange}\n"
        },
        {
            code="r30",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 绿色符文点（装袋时）{orange}\n"
        },
        {
            code="r31",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 绿色符文点（装袋时）{orange}\n"
        },
        {
            code="r32",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 绿色符文点（装袋时）{orange}\n"
        },
        {
            code="r33",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 绿色符文点（装袋时）{orange}\n"
        },
        {
            code="r34",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 绿色符文点（装袋时）{orange}\n"
        },
        {
            code="r35",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 绿色符文点（装袋时）{orange}\n"
        },
        {
            code="r36",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 金色符文点（装袋时）{orange}\n"
        },
        {
            code="r37",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 金色符文点（装袋时）{orange}\n"
        },
        {
            code="r38",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 金色符文点（装袋时）{orange}\n"
        },
        {
            code="r39",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 金色符文点（装袋时）{orange}\n"
        },
        {
            code="r40",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 金色符文点（装袋时）{orange}\n"
        },
        {
            code="r41",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 金色符文点（装袋时）{orange}\n"
        },
        {
            code="r42",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 金色符文点（装袋时）{orange}\n"
        },
        {
            code="r43",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 紫色符文点（装袋时）{orange}\n"
        },
        {
            code="r44",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 紫色符文点（装袋时）{orange}\n"
        },
        {
            code="r45",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 紫色符文点（装袋时）{orange}\n"
        },
        {
            code="r46",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 紫色符文点（装袋时）{orange}\n"
        },
        -- Tooltips on LoD Decals
        {
            code="01l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 低阶符文点（装袋时）{white}\n"
        },
        {
            code="02l",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 低阶符文点（装袋时）{white}\n"
        },
        {
            code="03l",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 低阶符文点（装袋时）{white}\n"
        },
        {
            code="04l",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 低阶符文点（装袋时）{white}\n"
        },
        {
            code="05l",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 低阶符文点（装袋时）{white}\n"
        },
        {
            code="06l",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 低阶符文点（装袋时）{white}\n"
        },
        {
            code="07l",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 低阶符文点（装袋时）{white}\n"
        },
        {
            code="08l",
            location={"onplayer","atvendor"},
            prefix="{gray}+128 低阶符文点（装袋时）{white}\n"
        },
        {
            code="09l",
            location={"onplayer","atvendor"},
            prefix="{gray}+256 低阶符文点（装袋时）{white}\n"
        },
        {
            code="10l",
            location={"onplayer","atvendor"},
            prefix="{gray}+512 低阶符文点（装袋时）{white}\n"
        },
        {
            code="11l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1024 低阶符文点（装袋时）{white}\n"
        },
        {
            code="12l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 中阶符文点（装袋时）{white}\n"
        },
        {
            code="13l",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 中阶符文点（装袋时）{white}\n"
        },
        {
            code="14l",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 中阶符文点（装袋时）{white}\n"
        },
        {
            code="15l",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 中阶符文点（装袋时）{white}\n"
        },
        {
            code="16l",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 中阶符文点（装袋时）{white}\n"
        },
        {
            code="17l",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 中阶符文点（装袋时）{white}\n"
        },
        {
            code="18l",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 中阶符文点（装袋时）{white}\n"
        },
        {
            code="19l",
            location={"onplayer","atvendor"},
            prefix="{gray}+128 中阶符文点（装袋时）{white}\n"
        },
        {
            code="20l",
            location={"onplayer","atvendor"},
            prefix="{gray}+256 中阶符文点（装袋时）{white}\n"
        },
        {
            code="21l",
            location={"onplayer","atvendor"},
            prefix="{gray}+512 中阶符文点（装袋时）{white}\n"
        },
        {
            code="22l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1024 中阶符文点（装袋时）{white}\n"
        },
        {
            code="23l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1 高阶符文点（装袋时）{white}\n"
        },
        {
            code="24l",
            location={"onplayer","atvendor"},
            prefix="{gray}+2 高阶符文点（装袋时）{white}\n"
        },
        {
            code="25l",
            location={"onplayer","atvendor"},
            prefix="{gray}+4 高阶符文点（装袋时）{white}\n"
        },
        {
            code="26l",
            location={"onplayer","atvendor"},
            prefix="{gray}+8 高阶符文点（装袋时）{white}\n"
        },
        {
            code="27l",
            location={"onplayer","atvendor"},
            prefix="{gray}+16 高阶符文点（装袋时）{white}\n"
        },
        {
            code="28l",
            location={"onplayer","atvendor"},
            prefix="{gray}+32 高阶符文点（装袋时）{white}\n"
        },
        {
            code="29l",
            location={"onplayer","atvendor"},
            prefix="{gray}+64 高阶符文点（装袋时）{white}\n"
        },
        {
            code="30l",
            location={"onplayer","atvendor"},
            prefix="{gray}+128 高阶符文点（装袋时）{white}\n"
        },
        {
            code="31l",
            location={"onplayer","atvendor"},
            prefix="{gray}+256 高阶符文点（装袋时）{white}\n"
        },
        {
            code="32l",
            location={"onplayer","atvendor"},
            prefix="{gray}+512 高阶符文点（装袋时）{white}\n"
        },
        {
            code="33l",
            location={"onplayer","atvendor"},
            prefix="{gray}+1024 高阶符文点（装袋时）{white}\n"
        },
        -- Socket info for ground items
            {   
            codes = "allitems",
            location = {"onground"},
            suffix = " {lilac}[{sockets}]",
            sockets = "1+"
        }, 
        -- Item tooltip Item shows (available/max) sockets for it's ilvl - Thank you Khaos!
        {
            codes = "allitems",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            suffix_desc = "{gray}孔数：{dark green}{sockets}{white}/{green}{maxsock} \n{blue}",
            sockets = "0+",
            maxsock = false
        },
        -- Item tooltip - Item has maximum sockets for it's ilvl
        {
            codes = "allitems",
            location = {"onplayer", "atvendor", "equipped", "onground"},
            suffix_desc = "{purple}最大孔数：{green}{sockets}{white}/{green}{maxsock}\n{blue}",
            sockets = "1+",
            maxsock = true
        },
    }
}
