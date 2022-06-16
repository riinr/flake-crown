{lib, ...}:
let
  DESC = "description";
  GH = "https://github.com";
  sources.github = {
    "2vg".mofuhttputils.${DESC}      = "useful minimal http server utils.";
    "2vg".mofuhttputils.tags         = ["http"];
    "2vg".mofuparser.${DESC}         = "mofuparser is hyper minimal ultra fast http parser";
    "2vg".mofuparser.tags            = ["http"];
    alaviss.union.${DESC}            = "Anonymous unions in Nim";
    alaviss.union.tags               = ["adt" "union"];
    dadadani.nim-random.${DESC}      = "Pseudo-random number generation library inspired by Python";
    dadadani.nim-random.tags         = ["library" "algorithms" "random"];
    disruptek.assume.${DESC}         = "typed AST normalization";
    disruptek.assume.tags            = ["library" "ast"];
    disruptek.badresults.${DESC}     = "a simpler and less fascist fork of nim-result";
    disruptek.badresults.tags        = ["library" "result" "errors" "functional"];
    disruptek.balls.${DESC}          = "a unittest framework with balls 🔴🟡🟢";
    disruptek.balls.tags             = ["unittest"];
    disruptek.cps.${DESC}            = "continuation-passing style";
    disruptek.cps.tags               = ["cps"];
    disruptek.cutelog.${DESC}        = "A stylish little logger to replace echo in command-line apps";
    disruptek.cutelog.doc            = "https://disruptek.github.io/cutelog/cutelog.html";
    disruptek.cutelog.tags           = ["log" "echo"];
    disruptek.gittyup.${DESC}        = "higher-level libgit2 bindings";
    disruptek.gittyup.tags           = ["git"];
    disruptek.grok.${DESC}           = "don't read too much into it";
    disruptek.grok.tags              = ["gear"];
    disruptek.terminaltables.${DESC} = "terminal tables";
    disruptek.terminaltables.license = "BSD-3-Clause";
    disruptek.terminaltables.url     = "${GH}/disruptek/nim-terminaltables";
    disruptek.terminaltables.name    = "github-disruptek-nim-terminaltables";
    disruptek.terminaltables.tags    = ["terminal" "tables" "ascii" "unicode"];
    disruptek.rest.${DESC}           = "rest comfort";
    disruptek.rest.tags              = ["http" "rest"];
    disruptek.semaphores.${DESC}     = "semaphores gone wild";
    disruptek.semaphores.tags        = ["library"];
    disruptek.testes.${DESC}         = "balls";
    disruptek.testes.alias           = "balls";
    disruptek.testes.tags            = ["library" "unittest"];
    disruptek.ups.${DESC}            = "a package handler";
    disruptek.ups.tags               = ["packages"];
    dom96.zippy.${DESC}              = "Pure Nim implementation of deflate, zlib, gzip and zip";
    dom96.zippy.tags                 = ["zip" "gzip" "zlib" "deflate"];
    enthus1ast.isPrivateIp.${DESC}   = "Test if an ip address is private";
    enthus1ast.isPrivateIp.tags      = ["network" "ip"];
    enthus1ast.isPrivateIp.url       = "${GH}/enthus1ast/nimIsPrivateIp";
    enthus1ast.commandParser.${DESC} = ''parses this syntax: "foo\"baa" "foo'baz" bar'';
    enthus1ast.commandParser.name    = "github-enthus1ast-nimCommandParser";
    enthus1ast.commandParser.tags    = ["ast"];
    enthus1ast.commandParser.url     = "${GH}/enthus1ast/nimCommandParser";
    fragworks.chipmunk7.${DESC}      = "Bindings for Chipmunk, a fast and lightweight 2D game physics library";
    fragworks.chipmunk7.tags         = ["game" "wrapper" "2d"];
    fragworks.chipmunk7.url          = "${GH}/fragworks/nim-chipmunk";
    gabbhack.anycase_fork.${DESC}    = "Convert strings to any case";
    gabbhack.anycase_fork.tags       = ["string"];
    gabbhack.anycase_fork.url        = "${GH}/gabbhack/anycase-fork";
    hamidb80.nimcoverage.${DESC}     = "Code coverage library for Nim";
    hamidb80.nimcoverage.tags        = ["unittest" "coverage"];
    hamidb80.nimcoverage.url         = "${GH}/hamidb80/coverage";
    haxscramper.hlibgit2.${DESC}     = "Nim wrapper for libgit2 library";
    haxscramper.hlibgit2.license     = "Apache-2.0";
    haxscramper.hlibgit2.pkgs        = ["libgit2"];
    haxscramper.hlibssh2.${DESC}     = "Nim wrapper for libssh2 library";
    haxscramper.hlibssh2.license     = "Apache-2.0";
    haxscramper.hlibssh2.pkgs        = ["libssh2"];
    haxscramper.hlibssh2.tags        = ["ssh"];
    hugogranstrom.cdt.${DESC}        = "Incremental (Fully Dynamic) Constrained_Delaunay_Triangulation";
    hugogranstrom.cdt.tags           = ["2D"];
    iffy.asynctools.${DESC}          = "Various asynchronous tools for Nim";
    iffy.asynctools.tags             = ["async" "library"];
    iffy.nim-dbus.${DESC}            = "dbus bindings for Nim";
    iffy.nim-dbus.tags               = ["dbus" "rpc" "linux"];
    jyapayne.nim-glfw.${DESC}        = "GLFW Bindings";
    jyapayne.nim-glfw.tags           = ["wrapper" "glfw"];
    jyapayne.nimterop.${DESC}        = "C/C++ interop for Nim";
    jyapayne.nimterop.tags           = ["wrapper"];
    liquid600pgm.nim-glm.${DESC}     = "Nim port of the OpenGL Mathematics (GLM) library";
    liquid600pgm.nim-glm.tags        = ["opengl"];
    nim-works.cps.${DESC}            = "Continuation-Passing Style for Nim link";
    nim-works.cps.tags               = ["library" "templates" "cps"];
    nimgl.glfw.${DESC}               = "GLFW bindings for Nim";
    nimgl.glfw.tags                  = ["glfw" "opengl"];
    planety.cookiejar.${DESC}        = "HTTP Cookies for Nim";
    planety.cookiejar.tags           = ["http" "cookies"];
    planety.cookies.alias            = "cookiejar";
    pmunch.docopt.${DESC}            = "Command line option parser that will make you smile";
    pmunch.docopt.tags               = ["cli"];
    pmunch.docopt.url                = "${GH}/pmunch/docopt.nim";
    pmunch.libclang.${DESC}          = "Wrapper for libclang C headers";
    pmunch.libclang.tags             = ["wrapper" "library" "clang"];
    pmunch.libclang.url              = "${GH}/pmunch/libclang-nim";
    pmunch.x11.${DESC}               = "Wrapper for X11";
    pmunch.x11.tags                  = ["library" "wrapper" "x11"];
    solitudesf.nim-dbus.${DESC}      = "dbus bindings for Nim";
    solitudesf.nim-dbus.tags         = ["library" "wrapper" "dbus"];
    solitudesf.x11.${DESC}           = "Wrapper for X11";
    solitudesf.x11.tags              = ["library" "wrapper" "x11"];
    status-im.news.${DESC}           = "Simple WebSocket library for nim.";
    status-im.news.tags              = ["websocket" "ws"];
    status-im.nim-taskpools.${DESC}  = "lightweight, energy-efficient, easily auditable threadpool";
    status-im.nim-taskpools.tags     = ["thread"];
    subsetpark.nim-stomp.${DESC}     = "A pure-nim implementation of the STOMP protocol for machine messaging.";
    subsetpark.nim-stomp.tags        = ["stomp"];
    tandy-1000.uniony.${DESC}        = "A jsony plugin to enable union support";
    tandy-1000.uniony.tags           = ["json" "union"];
    thisago.findxml.${DESC}          = "XML search easy as JS DOM API";
    thisago.findxml.tags             = ["xml"];
    timotheecour.asynctools.${DESC}  = "Various asynchronous tools for Nim";
    timotheecour.asynctools.tags     = ["async"];
    tormund.nester.${DESC}           = "Simple HTTP server";
    tormund.nester.tags              = ["http"];
    vindaar.seqmath.${DESC}          = "math for sequences and nested sequences";
    vindaar.seqmath.tags             = ["math" "seq" "matrix"];
    yglukhov.android.${DESC}         = "Android NDK bindings";
    yglukhov.android.tags            = ["android" "wrapper"];
    yglukhov.async_http.${DESC}      = "Basic http_request implementation for JS and native targets";
    yglukhov.async_http.name         = "github-yglukhov-async_http_request";
    yglukhov.async_http.tags         = ["http" "js"];
    yglukhov.async_http.url          = "${GH}/yglukhov/async_http_request";
    yglukhov.bearssl_pkey.${DESC}    = "bearssl pkey decoder";
    yglukhov.bearssl_pkey.tags       = ["ssl"];
    yglukhov.bearssl_pkey.name       = "github-yglukhov-bearssl_pkey_decoder";
    yglukhov.bearssl_pkey.url        = "${GH}/yglukhov/bearssl_pkey_decoder";
    yglukhov.clurp.${DESC}           = "Slurp C/C++ libraries into Nim world";
    yglukhov.clurp.tags              = ["wrapper"];
    yglukhov.threadpools.${DESC}     = "threadpools";
    yglukhov.threadpools.tags        = ["thread"];
    yglukhov.ttf.${DESC}             = "TTF library";
    yglukhov.ttf.tags                = ["wrapper" "font"];
    yglukhov.wasmrt.${DESC}          = "Nim wasm runtime";
    yglukhov.wasmrt.tags             = ["wasm"];
    yyoncho.asynctools.${DESC}       = "Various asynchronous tools for Nim";
    yyoncho.asynctools.tags          = ["async"];
    yyoncho.json_rpc.${DESC}         = "Ethereum remote procedure calls";
    yyoncho.json_rpc.tags            = ["json" "rpc" "eth"];
    yyoncho.json_rpc.url             = "${GH}/yyoncho/nim-json-rpc";
    zacharycarter.bgfxdotnim.${DESC} = "Bindings to BGFX";
    zacharycarter.bgfxdotnim.tags    = ["wrapper" "bgfx"];
    zacharycarter.bgfxdotnim.url     = "${GH}/zacharycarter/bgf.nim";
    zacharycarter.bgfxextras.${DESC} = "Extra wrappers for bgfx";
    zacharycarter.bgfxextras.name    = "github-zacharycarter-bgfxextrasdotnim";
    zacharycarter.bgfxextras.tags    = ["wrapper" "bgfx"];
    zacharycarter.bgfxextras.url     = "${GH}/zacharycarter/bgfx.extras.nim";
    zacharycarter.freetype.${DESC}   = "Freetype2 Wrapper for Nim";
    zacharycarter.freetype.tags      = ["wrapper" "font"];
    zacharycarter.nimassimp.${DESC}  = "Assorted wrappers and reusable libraries";
    zacharycarter.nimassimp.tags     = ["wrapper" "assimp"];
    zacharycarter.nuklear.${DESC}    = "nim nuklear bindings";
    zacharycarter.nuklear.tags       = ["nuklear" "ui"];
    zacharycarter.nuklear.url        = "${GH}/zacharycarter/nuklear-nim";
    zacharycarter.nvg.${DESC}        = "Wrapper for NanoVG vector graphics library";
    zacharycarter.nvg.tags           = ["wrapper" "nanovg" "2D" "opengl"];
    zacharycarter.nvg.url            = "${GH}/zacharycarter/nanovg.nim";
    zedeus.redis.${DESC}             = "Fork of official redis client for Nim";
    zedeus.redis.tags                = ["redis"];
  };
in 
{
  files.json."/refresher/packages_other.json" = 
  let 
    pkgIt = src: author: pkg: info: 
    {
        license = "MIT";
        method  = "git";
        name    = "${src}-${author}-${pkg}";
        url = 
          if src == "github" 
          then "${GH}/${author}/${pkg}"
          else "";
      } //
      info;
    fromAuthor = src: author: pkgs: lib.mapAttrsToList (pkgIt src author) pkgs;
    fromSource = src: authors: lib.mapAttrsToList (fromAuthor src) authors;
    fromSources = lib.mapAttrsToList fromSource;
  in lib.lists.flatten (fromSources sources);
}