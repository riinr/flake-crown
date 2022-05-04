{
  description = ''important_packages with 0 dependencies and all unittests passing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fision-master.flake = false;
  inputs.src-fision-master.ref   = "refs/heads/master";
  inputs.src-fision-master.owner = "juancarlospaco";
  inputs.src-fision-master.repo  = "fision";
  inputs.src-fision-master.type  = "github";
  
  inputs."argparse".owner = "nim-nix-pkgs";
  inputs."argparse".ref   = "master";
  inputs."argparse".repo  = "argparse";
  inputs."argparse".dir   = "v3_0_0";
  inputs."argparse".type  = "github";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arraymancer".owner = "nim-nix-pkgs";
  inputs."arraymancer".ref   = "master";
  inputs."arraymancer".repo  = "arraymancer";
  inputs."arraymancer".dir   = "v0_7_12";
  inputs."arraymancer".type  = "github";
  inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncthreadpool".owner = "nim-nix-pkgs";
  inputs."asyncthreadpool".ref   = "master";
  inputs."asyncthreadpool".repo  = "asyncthreadpool";
  inputs."asyncthreadpool".dir   = "main";
  inputs."asyncthreadpool".type  = "github";
  inputs."asyncthreadpool".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncthreadpool".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awk".owner = "nim-nix-pkgs";
  inputs."awk".ref   = "master";
  inputs."awk".repo  = "awk";
  inputs."awk".dir   = "master";
  inputs."awk".type  = "github";
  inputs."awk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binaryheap".owner = "nim-nix-pkgs";
  inputs."binaryheap".ref   = "master";
  inputs."binaryheap".repo  = "binaryheap";
  inputs."binaryheap".dir   = "master";
  inputs."binaryheap".type  = "github";
  inputs."binaryheap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryheap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bipbuffer".owner = "nim-nix-pkgs";
  inputs."bipbuffer".ref   = "master";
  inputs."bipbuffer".repo  = "bipbuffer";
  inputs."bipbuffer".dir   = "master";
  inputs."bipbuffer".type  = "github";
  inputs."bipbuffer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bipbuffer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bncurve".owner = "nim-nix-pkgs";
  inputs."bncurve".ref   = "master";
  inputs."bncurve".repo  = "bncurve";
  inputs."bncurve".dir   = "master";
  inputs."bncurve".type  = "github";
  inputs."bncurve".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bncurve".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."brainfuck".owner = "nim-nix-pkgs";
  inputs."brainfuck".ref   = "master";
  inputs."brainfuck".repo  = "brainfuck";
  inputs."brainfuck".dir   = "master";
  inputs."brainfuck".type  = "github";
  inputs."brainfuck".inputs.nixpkgs.follows = "nixpkgs";
  inputs."brainfuck".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump".owner = "nim-nix-pkgs";
  inputs."bump".ref   = "master";
  inputs."bump".repo  = "bump";
  inputs."bump".dir   = "1_8_29";
  inputs."bump".type  = "github";
  inputs."bump".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."c2nim".owner = "nim-nix-pkgs";
  inputs."c2nim".ref   = "master";
  inputs."c2nim".repo  = "c2nim";
  inputs."c2nim".dir   = "0_9_18";
  inputs."c2nim".type  = "github";
  inputs."c2nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cascade".owner = "nim-nix-pkgs";
  inputs."cascade".ref   = "master";
  inputs."cascade".repo  = "cascade";
  inputs."cascade".dir   = "v1_0_0";
  inputs."cascade".type  = "github";
  inputs."cascade".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cascade".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cello".owner = "nim-nix-pkgs";
  inputs."cello".ref   = "master";
  inputs."cello".repo  = "cello";
  inputs."cello".dir   = "0_3_0";
  inputs."cello".type  = "github";
  inputs."cello".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cello".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".dir   = "0_2_5";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronicles".owner = "nim-nix-pkgs";
  inputs."chronicles".ref   = "master";
  inputs."chronicles".repo  = "chronicles";
  inputs."chronicles".dir   = "v0_10_2";
  inputs."chronicles".type  = "github";
  inputs."chronicles".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronicles".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chronos".owner = "nim-nix-pkgs";
  inputs."chronos".ref   = "master";
  inputs."chronos".repo  = "chronos";
  inputs."chronos".dir   = "master";
  inputs."chronos".type  = "github";
  inputs."chronos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chronos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_23";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."combparser".owner = "nim-nix-pkgs";
  inputs."combparser".ref   = "master";
  inputs."combparser".repo  = "combparser";
  inputs."combparser".dir   = "master";
  inputs."combparser".type  = "github";
  inputs."combparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."combparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."compactdict".owner = "nim-nix-pkgs";
  inputs."compactdict".ref   = "master";
  inputs."compactdict".repo  = "compactdict";
  inputs."compactdict".dir   = "master";
  inputs."compactdict".type  = "github";
  inputs."compactdict".inputs.nixpkgs.follows = "nixpkgs";
  inputs."compactdict".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dashing".owner = "nim-nix-pkgs";
  inputs."dashing".ref   = "master";
  inputs."dashing".repo  = "dashing";
  inputs."dashing".dir   = "0_1_1";
  inputs."dashing".type  = "github";
  inputs."dashing".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dashing".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datamancer".owner = "nim-nix-pkgs";
  inputs."datamancer".ref   = "master";
  inputs."datamancer".repo  = "datamancer";
  inputs."datamancer".dir   = "v0_2_3";
  inputs."datamancer".type  = "github";
  inputs."datamancer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datamancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."delaunay".owner = "nim-nix-pkgs";
  inputs."delaunay".ref   = "master";
  inputs."delaunay".repo  = "delaunay";
  inputs."delaunay".dir   = "0_3_1";
  inputs."delaunay".type  = "github";
  inputs."delaunay".inputs.nixpkgs.follows = "nixpkgs";
  inputs."delaunay".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_6_8";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easygl".owner = "nim-nix-pkgs";
  inputs."easygl".ref   = "master";
  inputs."easygl".repo  = "easygl";
  inputs."easygl".dir   = "";
  inputs."easygl".type  = "github";
  inputs."easygl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easygl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."elvis".owner = "nim-nix-pkgs";
  inputs."elvis".ref   = "master";
  inputs."elvis".repo  = "elvis";
  inputs."elvis".dir   = "v0_5_0";
  inputs."elvis".type  = "github";
  inputs."elvis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."elvis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fidget".owner = "nim-nix-pkgs";
  inputs."fidget".ref   = "master";
  inputs."fidget".repo  = "fidget";
  inputs."fidget".dir   = "0_7_9";
  inputs."fidget".type  = "github";
  inputs."fidget".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fidget".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fusion".owner = "nim-nix-pkgs";
  inputs."fusion".ref   = "master";
  inputs."fusion".repo  = "fusion";
  inputs."fusion".dir   = "v1_1";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gara".owner = "nim-nix-pkgs";
  inputs."gara".ref   = "master";
  inputs."gara".repo  = "gara";
  inputs."gara".dir   = "master";
  inputs."gara".type  = "github";
  inputs."gara".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gara".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ggplotnim".owner = "nim-nix-pkgs";
  inputs."ggplotnim".ref   = "master";
  inputs."ggplotnim".repo  = "ggplotnim";
  inputs."ggplotnim".dir   = "v0_5_1";
  inputs."ggplotnim".type  = "github";
  inputs."ggplotnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ggplotnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob".owner = "nim-nix-pkgs";
  inputs."glob".ref   = "master";
  inputs."glob".repo  = "glob";
  inputs."glob".dir   = "v0_11_1";
  inputs."glob".type  = "github";
  inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnuplot".owner = "nim-nix-pkgs";
  inputs."gnuplot".ref   = "master";
  inputs."gnuplot".repo  = "gnuplot";
  inputs."gnuplot".dir   = "master";
  inputs."gnuplot".type  = "github";
  inputs."gnuplot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnuplot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts".owner = "nim-nix-pkgs";
  inputs."hts".ref   = "master";
  inputs."hts".repo  = "hts";
  inputs."hts".dir   = "v0_3_22";
  inputs."hts".type  = "github";
  inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpauth".owner = "nim-nix-pkgs";
  inputs."httpauth".ref   = "master";
  inputs."httpauth".repo  = "httpauth";
  inputs."httpauth".dir   = "0_3_0";
  inputs."httpauth".type  = "github";
  inputs."httpauth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpauth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."illwill".owner = "nim-nix-pkgs";
  inputs."illwill".ref   = "master";
  inputs."illwill".repo  = "illwill";
  inputs."illwill".dir   = "v0_3_0";
  inputs."illwill".type  = "github";
  inputs."illwill".inputs.nixpkgs.follows = "nixpkgs";
  inputs."illwill".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."inim".owner = "nim-nix-pkgs";
  inputs."inim".ref   = "master";
  inputs."inim".repo  = "inim";
  inputs."inim".dir   = "v0_6_1";
  inputs."inim".type  = "github";
  inputs."inim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."inim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."itertools".owner = "nim-nix-pkgs";
  inputs."itertools".ref   = "master";
  inputs."itertools".repo  = "itertools";
  inputs."itertools".dir   = "v0_4_0";
  inputs."itertools".type  = "github";
  inputs."itertools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."itertools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iterutils".owner = "nim-nix-pkgs";
  inputs."iterutils".ref   = "master";
  inputs."iterutils".repo  = "iterutils";
  inputs."iterutils".dir   = "master";
  inputs."iterutils".type  = "github";
  inputs."iterutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jstin".owner = "nim-nix-pkgs";
  inputs."jstin".ref   = "master";
  inputs."jstin".repo  = "jstin";
  inputs."jstin".dir   = "master";
  inputs."jstin".type  = "github";
  inputs."jstin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jstin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax".owner = "nim-nix-pkgs";
  inputs."karax".ref   = "master";
  inputs."karax".repo  = "karax";
  inputs."karax".dir   = "1_2_1";
  inputs."karax".type  = "github";
  inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lockfreequeues".owner = "nim-nix-pkgs";
  inputs."lockfreequeues".ref   = "master";
  inputs."lockfreequeues".repo  = "lockfreequeues";
  inputs."lockfreequeues".dir   = "v3_0_0";
  inputs."lockfreequeues".type  = "github";
  inputs."lockfreequeues".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lockfreequeues".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loopfusion".owner = "nim-nix-pkgs";
  inputs."loopfusion".ref   = "master";
  inputs."loopfusion".repo  = "loopfusion";
  inputs."loopfusion".dir   = "master";
  inputs."loopfusion".type  = "github";
  inputs."loopfusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loopfusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroutils".owner = "nim-nix-pkgs";
  inputs."macroutils".ref   = "master";
  inputs."macroutils".repo  = "macroutils";
  inputs."macroutils".dir   = "v1_2_0";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu".owner = "nim-nix-pkgs";
  inputs."manu".ref   = "master";
  inputs."manu".repo  = "manu";
  inputs."manu".dir   = "v2_3";
  inputs."manu".type  = "github";
  inputs."manu".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."markdown".owner = "nim-nix-pkgs";
  inputs."markdown".ref   = "master";
  inputs."markdown".repo  = "markdown";
  inputs."markdown".dir   = "v0_8_5";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo".owner = "nim-nix-pkgs";
  inputs."memo".ref   = "master";
  inputs."memo".repo  = "memo";
  inputs."memo".dir   = "0_4_0";
  inputs."memo".type  = "github";
  inputs."memo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim".owner = "nim-nix-pkgs";
  inputs."msgpack4nim".ref   = "master";
  inputs."msgpack4nim".repo  = "msgpack4nim";
  inputs."msgpack4nim".dir   = "v0_3_1";
  inputs."msgpack4nim".type  = "github";
  inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake".owner = "nim-nix-pkgs";
  inputs."nake".ref   = "master";
  inputs."nake".repo  = "nake";
  inputs."nake".dir   = "1_9_4";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neo".owner = "nim-nix-pkgs";
  inputs."neo".ref   = "master";
  inputs."neo".repo  = "neo";
  inputs."neo".dir   = "0_3_2";
  inputs."neo".type  = "github";
  inputs."neo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nesm".owner = "nim-nix-pkgs";
  inputs."nesm".ref   = "master";
  inputs."nesm".repo  = "nesm";
  inputs."nesm".dir   = "v0_4_10";
  inputs."nesm".type  = "github";
  inputs."nesm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."netty".owner = "nim-nix-pkgs";
  inputs."netty".ref   = "master";
  inputs."netty".repo  = "netty";
  inputs."netty".dir   = "0_2_1";
  inputs."netty".type  = "github";
  inputs."netty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."netty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy".owner = "nim-nix-pkgs";
  inputs."nicy".ref   = "master";
  inputs."nicy".repo  = "nicy";
  inputs."nicy".dir   = "v2_5_1";
  inputs."nicy".type  = "github";
  inputs."nicy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nigui".owner = "nim-nix-pkgs";
  inputs."nigui".ref   = "master";
  inputs."nigui".repo  = "nigui";
  inputs."nigui".dir   = "v0_2_5";
  inputs."nigui".type  = "github";
  inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimdata".owner = "nim-nix-pkgs";
  inputs."nimdata".ref   = "master";
  inputs."nimdata".repo  = "nimdata";
  inputs."nimdata".dir   = "master";
  inputs."nimdata".type  = "github";
  inputs."nimdata".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdata".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimes".owner = "nim-nix-pkgs";
  inputs."nimes".ref   = "master";
  inputs."nimes".repo  = "nimes";
  inputs."nimes".dir   = "master";
  inputs."nimes".type  = "github";
  inputs."nimes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfp".owner = "nim-nix-pkgs";
  inputs."nimfp".ref   = "master";
  inputs."nimfp".repo  = "nimfp";
  inputs."nimfp".dir   = "v0_4_4";
  inputs."nimfp".type  = "github";
  inputs."nimfp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgame2".owner = "nim-nix-pkgs";
  inputs."nimgame2".ref   = "master";
  inputs."nimgame2".repo  = "nimgame2";
  inputs."nimgame2".dir   = "v0_6_2";
  inputs."nimgame2".type  = "github";
  inputs."nimgame2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgame2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen".owner = "nim-nix-pkgs";
  inputs."nimgen".ref   = "master";
  inputs."nimgen".repo  = "nimgen";
  inputs."nimgen".dir   = "v0_5_1";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly".owner = "nim-nix-pkgs";
  inputs."nimly".ref   = "master";
  inputs."nimly".repo  = "nimly";
  inputs."nimly".dir   = "v0_7_0";
  inputs."nimly".type  = "github";
  inputs."nimly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpy".owner = "nim-nix-pkgs";
  inputs."nimpy".ref   = "master";
  inputs."nimpy".repo  = "nimpy";
  inputs."nimpy".dir   = "master";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimquery".owner = "nim-nix-pkgs";
  inputs."nimquery".ref   = "master";
  inputs."nimquery".repo  = "nimquery";
  inputs."nimquery".dir   = "v1_2_3";
  inputs."nimquery".type  = "github";
  inputs."nimquery".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimquery".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl".owner = "nim-nix-pkgs";
  inputs."nimsl".ref   = "master";
  inputs."nimsl".repo  = "nimsl";
  inputs."nimsl".dir   = "v0_3_2";
  inputs."nimsl".type  = "github";
  inputs."nimsl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsvg".owner = "nim-nix-pkgs";
  inputs."nimsvg".ref   = "master";
  inputs."nimsvg".repo  = "nimsvg";
  inputs."nimsvg".dir   = "master";
  inputs."nimsvg".type  = "github";
  inputs."nimsvg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsvg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop".owner = "nim-nix-pkgs";
  inputs."nimterop".ref   = "master";
  inputs."nimterop".repo  = "nimterop";
  inputs."nimterop".dir   = "v0_6_13";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc".owner = "nim-nix-pkgs";
  inputs."nimwc".ref   = "master";
  inputs."nimwc".repo  = "nimwc";
  inputs."nimwc".dir   = "v6_1_3";
  inputs."nimwc".type  = "github";
  inputs."nimwc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nitter".owner = "nim-nix-pkgs";
  inputs."nitter".ref   = "master";
  inputs."nitter".repo  = "nitter";
  inputs."nitter".dir   = "";
  inputs."nitter".type  = "github";
  inputs."nitter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norm".owner = "nim-nix-pkgs";
  inputs."norm".ref   = "master";
  inputs."norm".repo  = "norm";
  inputs."norm".dir   = "2_4_0";
  inputs."norm".type  = "github";
  inputs."norm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".dir   = "0_26_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."numericalnim".owner = "nim-nix-pkgs";
  inputs."numericalnim".ref   = "master";
  inputs."numericalnim".repo  = "numericalnim";
  inputs."numericalnim".dir   = "v0_7_1";
  inputs."numericalnim".type  = "github";
  inputs."numericalnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."numericalnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optionsutils".owner = "nim-nix-pkgs";
  inputs."optionsutils".ref   = "master";
  inputs."optionsutils".repo  = "optionsutils";
  inputs."optionsutils".dir   = "v1_2_0";
  inputs."optionsutils".type  = "github";
  inputs."optionsutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ormin".owner = "nim-nix-pkgs";
  inputs."ormin".ref   = "master";
  inputs."ormin".repo  = "ormin";
  inputs."ormin".dir   = "0_1_0";
  inputs."ormin".type  = "github";
  inputs."ormin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ormin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml".owner = "nim-nix-pkgs";
  inputs."parsetoml".ref   = "master";
  inputs."parsetoml".repo  = "parsetoml";
  inputs."parsetoml".dir   = "v0_6_0";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."patty".owner = "nim-nix-pkgs";
  inputs."patty".ref   = "master";
  inputs."patty".repo  = "patty";
  inputs."patty".dir   = "0_3_4";
  inputs."patty".type  = "github";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie".owner = "nim-nix-pkgs";
  inputs."pixie".ref   = "master";
  inputs."pixie".repo  = "pixie";
  inputs."pixie".dir   = "4_2_0";
  inputs."pixie".type  = "github";
  inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."plotly".owner = "nim-nix-pkgs";
  inputs."plotly".ref   = "master";
  inputs."plotly".repo  = "plotly";
  inputs."plotly".dir   = "v0_3_0";
  inputs."plotly".type  = "github";
  inputs."plotly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."plotly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pnm".owner = "nim-nix-pkgs";
  inputs."pnm".ref   = "master";
  inputs."pnm".repo  = "pnm";
  inputs."pnm".dir   = "v2_1_1";
  inputs."pnm".type  = "github";
  inputs."pnm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pnm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polypbren".owner = "nim-nix-pkgs";
  inputs."polypbren".ref   = "master";
  inputs."polypbren".repo  = "polypbren";
  inputs."polypbren".dir   = "v0_4_3";
  inputs."polypbren".type  = "github";
  inputs."polypbren".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polypbren".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue".owner = "nim-nix-pkgs";
  inputs."prologue".ref   = "master";
  inputs."prologue".repo  = "prologue";
  inputs."prologue".dir   = "v0_5_8";
  inputs."prologue".type  = "github";
  inputs."prologue".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."protobuf".owner = "nim-nix-pkgs";
  inputs."protobuf".ref   = "master";
  inputs."protobuf".repo  = "protobuf";
  inputs."protobuf".dir   = "v0_5_1";
  inputs."protobuf".type  = "github";
  inputs."protobuf".inputs.nixpkgs.follows = "nixpkgs";
  inputs."protobuf".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pylib".owner = "nim-nix-pkgs";
  inputs."pylib".ref   = "master";
  inputs."pylib".repo  = "pylib";
  inputs."pylib".dir   = "master";
  inputs."pylib".type  = "github";
  inputs."pylib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pylib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rbtree".owner = "nim-nix-pkgs";
  inputs."rbtree".ref   = "master";
  inputs."rbtree".repo  = "rbtree";
  inputs."rbtree".dir   = "0_5_0";
  inputs."rbtree".type  = "github";
  inputs."rbtree".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react".owner = "nim-nix-pkgs";
  inputs."react".ref   = "master";
  inputs."react".repo  = "react";
  inputs."react".dir   = "0_2_0";
  inputs."react".type  = "github";
  inputs."react".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_19_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."result".owner = "nim-nix-pkgs";
  inputs."result".ref   = "master";
  inputs."result".repo  = "result";
  inputs."result".dir   = "master";
  inputs."result".type  = "github";
  inputs."result".inputs.nixpkgs.follows = "nixpkgs";
  inputs."result".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rollinghash".owner = "nim-nix-pkgs";
  inputs."rollinghash".ref   = "master";
  inputs."rollinghash".repo  = "rollinghash";
  inputs."rollinghash".dir   = "master";
  inputs."rollinghash".type  = "github";
  inputs."rollinghash".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rollinghash".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rosencrantz".owner = "nim-nix-pkgs";
  inputs."rosencrantz".ref   = "master";
  inputs."rosencrantz".repo  = "rosencrantz";
  inputs."rosencrantz".dir   = "0_4_3";
  inputs."rosencrantz".type  = "github";
  inputs."rosencrantz".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rosencrantz".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl1".owner = "nim-nix-pkgs";
  inputs."sdl1".ref   = "master";
  inputs."sdl1".repo  = "sdl1";
  inputs."sdl1".dir   = "master";
  inputs."sdl1".type  = "github";
  inputs."sdl1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2_nim".owner = "nim-nix-pkgs";
  inputs."sdl2_nim".ref   = "master";
  inputs."sdl2_nim".repo  = "sdl2_nim";
  inputs."sdl2_nim".dir   = "v2_0_14_3";
  inputs."sdl2_nim".type  = "github";
  inputs."sdl2_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4".owner = "nim-nix-pkgs";
  inputs."sigv4".ref   = "master";
  inputs."sigv4".repo  = "sigv4";
  inputs."sigv4".dir   = "1_4_0";
  inputs."sigv4".type  = "github";
  inputs."sigv4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim".owner = "nim-nix-pkgs";
  inputs."sim".ref   = "master";
  inputs."sim".repo  = "sim";
  inputs."sim".dir   = "0_1_7";
  inputs."sim".type  = "github";
  inputs."sim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".owner = "nim-nix-pkgs";
  inputs."stint".ref   = "master";
  inputs."stint".repo  = "stint";
  inputs."stint".dir   = "master";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strslice".owner = "nim-nix-pkgs";
  inputs."strslice".ref   = "master";
  inputs."strslice".repo  = "strslice";
  inputs."strslice".dir   = "v0_2_1";
  inputs."strslice".type  = "github";
  inputs."strslice".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strslice".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode".owner = "nim-nix-pkgs";
  inputs."strunicode".ref   = "master";
  inputs."strunicode".repo  = "strunicode";
  inputs."strunicode".dir   = "v0_8_0";
  inputs."strunicode".type  = "github";
  inputs."strunicode".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy".owner = "nim-nix-pkgs";
  inputs."supersnappy".ref   = "master";
  inputs."supersnappy".repo  = "supersnappy";
  inputs."supersnappy".dir   = "2_1_1";
  inputs."supersnappy".type  = "github";
  inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."synthesis".owner = "nim-nix-pkgs";
  inputs."synthesis".ref   = "master";
  inputs."synthesis".repo  = "synthesis";
  inputs."synthesis".dir   = "v0_2_0";
  inputs."synthesis".type  = "github";
  inputs."synthesis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."synthesis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."telebot".owner = "nim-nix-pkgs";
  inputs."telebot".ref   = "master";
  inputs."telebot".repo  = "telebot";
  inputs."telebot".dir   = "2022_04_17";
  inputs."telebot".type  = "github";
  inputs."telebot".inputs.nixpkgs.follows = "nixpkgs";
  inputs."telebot".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempdir".owner = "nim-nix-pkgs";
  inputs."tempdir".ref   = "master";
  inputs."tempdir".repo  = "tempdir";
  inputs."tempdir".dir   = "v1_0_1";
  inputs."tempdir".type  = "github";
  inputs."tempdir".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."templates".owner = "nim-nix-pkgs";
  inputs."templates".ref   = "master";
  inputs."templates".repo  = "templates";
  inputs."templates".dir   = "master";
  inputs."templates".type  = "github";
  inputs."templates".inputs.nixpkgs.follows = "nixpkgs";
  inputs."templates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."terminaltables".owner = "nim-nix-pkgs";
  inputs."terminaltables".ref   = "master";
  inputs."terminaltables".repo  = "terminaltables";
  inputs."terminaltables".dir   = "master";
  inputs."terminaltables".type  = "github";
  inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termstyle".owner = "nim-nix-pkgs";
  inputs."termstyle".ref   = "master";
  inputs."termstyle".repo  = "termstyle";
  inputs."termstyle".dir   = "master";
  inputs."termstyle".type  = "github";
  inputs."termstyle".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termstyle".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timeit".owner = "nim-nix-pkgs";
  inputs."timeit".ref   = "master";
  inputs."timeit".repo  = "timeit";
  inputs."timeit".dir   = "v0_3_6";
  inputs."timeit".type  = "github";
  inputs."timeit".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timeit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones".owner = "nim-nix-pkgs";
  inputs."timezones".ref   = "master";
  inputs."timezones".repo  = "timezones";
  inputs."timezones".dir   = "v0_5_4";
  inputs."timezones".type  = "github";
  inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tiny_sqlite".owner = "nim-nix-pkgs";
  inputs."tiny_sqlite".ref   = "master";
  inputs."tiny_sqlite".repo  = "tiny_sqlite";
  inputs."tiny_sqlite".dir   = "v0_1_2";
  inputs."tiny_sqlite".type  = "github";
  inputs."tiny_sqlite".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tiny_sqlite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".dir   = "v0_10_0";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodeplus".owner = "nim-nix-pkgs";
  inputs."unicodeplus".ref   = "master";
  inputs."unicodeplus".repo  = "unicodeplus";
  inputs."unicodeplus".dir   = "v0_8_0";
  inputs."unicodeplus".type  = "github";
  inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unpack".owner = "nim-nix-pkgs";
  inputs."unpack".ref   = "master";
  inputs."unpack".repo  = "unpack";
  inputs."unpack".dir   = "master";
  inputs."unpack".type  = "github";
  inputs."unpack".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unpack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."weave".owner = "nim-nix-pkgs";
  inputs."weave".ref   = "master";
  inputs."weave".repo  = "weave";
  inputs."weave".dir   = "v0_4_0";
  inputs."weave".type  = "github";
  inputs."weave".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocket".owner = "nim-nix-pkgs";
  inputs."websocket".ref   = "master";
  inputs."websocket".repo  = "websocket";
  inputs."websocket".dir   = "0_5_0";
  inputs."websocket".type  = "github";
  inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim".owner = "nim-nix-pkgs";
  inputs."winim".ref   = "master";
  inputs."winim".repo  = "winim";
  inputs."winim".dir   = "3_8_0";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."yaml".owner = "nim-nix-pkgs";
  inputs."yaml".ref   = "master";
  inputs."yaml".repo  = "yaml";
  inputs."yaml".dir   = "v0_16_0";
  inputs."yaml".type  = "github";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zero_functional".owner = "nim-nix-pkgs";
  inputs."zero_functional".ref   = "master";
  inputs."zero_functional".repo  = "zero_functional";
  inputs."zero_functional".dir   = "v1_2_1";
  inputs."zero_functional".type  = "github";
  inputs."zero_functional".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zero_functional".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".owner = "nim-nix-pkgs";
  inputs."zippy".ref   = "master";
  inputs."zippy".repo  = "zippy";
  inputs."zippy".dir   = "0_9_7";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fision-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fision-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}