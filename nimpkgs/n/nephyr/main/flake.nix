{
  description = ''Nim wrapper for Zephyr RTOS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nephyr-main.flake = false;
  inputs.src-nephyr-main.ref   = "refs/heads/main";
  inputs.src-nephyr-main.owner = "EmbeddedNim";
  inputs.src-nephyr-main.repo  = "nephyr";
  inputs.src-nephyr-main.type  = "github";
  
  inputs."msgpack4nim".owner = "nim-nix-pkgs";
  inputs."msgpack4nim".ref   = "master";
  inputs."msgpack4nim".repo  = "msgpack4nim";
  inputs."msgpack4nim".dir   = "v0_3_1";
  inputs."msgpack4nim".type  = "github";
  inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".dir   = "master";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cdecl".owner = "nim-nix-pkgs";
  inputs."cdecl".ref   = "master";
  inputs."cdecl".repo  = "cdecl";
  inputs."cdecl".dir   = "main";
  inputs."cdecl".type  = "github";
  inputs."cdecl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cdecl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/embeddednim/nephyrcli".owner = "nim-nix-pkgs";
  inputs."github.com/embeddednim/nephyrcli".ref   = "master";
  inputs."github.com/embeddednim/nephyrcli".repo  = "github.com/embeddednim/nephyrcli";
  inputs."github.com/embeddednim/nephyrcli".dir   = "";
  inputs."github.com/embeddednim/nephyrcli".type  = "github";
  inputs."github.com/embeddednim/nephyrcli".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/embeddednim/nephyrcli".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcu_utils".owner = "nim-nix-pkgs";
  inputs."mcu_utils".ref   = "master";
  inputs."mcu_utils".repo  = "mcu_utils";
  inputs."mcu_utils".dir   = "v0_1_0";
  inputs."mcu_utils".type  = "github";
  inputs."mcu_utils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcu_utils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fastrpc".owner = "nim-nix-pkgs";
  inputs."fastrpc".ref   = "master";
  inputs."fastrpc".repo  = "fastrpc";
  inputs."fastrpc".dir   = "";
  inputs."fastrpc".type  = "github";
  inputs."fastrpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastrpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nephyr-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nephyr-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}