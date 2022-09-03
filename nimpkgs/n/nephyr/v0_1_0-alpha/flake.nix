{
  description = ''Nim wrapper for Zephyr RTOS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nephyr-v0_1_0-alpha.flake = false;
  inputs.src-nephyr-v0_1_0-alpha.ref   = "refs/tags/v0.1.0-alpha";
  inputs.src-nephyr-v0_1_0-alpha.owner = "EmbeddedNim";
  inputs.src-nephyr-v0_1_0-alpha.repo  = "nephyr";
  inputs.src-nephyr-v0_1_0-alpha.type  = "github";
  
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
  inputs."stew".dir   = "source";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcu_utils".owner = "nim-nix-pkgs";
  inputs."mcu_utils".ref   = "master";
  inputs."mcu_utils".repo  = "mcu_utils";
  inputs."mcu_utils".dir   = "main";
  inputs."mcu_utils".type  = "github";
  inputs."mcu_utils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcu_utils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/embeddednim/fast_rpc".owner = "nim-nix-pkgs";
  inputs."github.com/embeddednim/fast_rpc".ref   = "master";
  inputs."github.com/embeddednim/fast_rpc".repo  = "github.com/embeddednim/fast_rpc";
  inputs."github.com/embeddednim/fast_rpc".dir   = "";
  inputs."github.com/embeddednim/fast_rpc".type  = "github";
  inputs."github.com/embeddednim/fast_rpc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/embeddednim/fast_rpc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nephyr-v0_1_0-alpha"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nephyr-v0_1_0-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}