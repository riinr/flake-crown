{
  description = ''nimAGG is a Nim port of Anti Grain Geometry(AGG)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimAGG-master.flake = false;
  inputs.src-nimAGG-master.ref   = "refs/heads/master";
  inputs.src-nimAGG-master.owner = "jangko";
  inputs.src-nimAGG-master.repo  = "nimAGG";
  inputs.src-nimAGG-master.type  = "github";
  
  inputs."sdl2_nim".owner = "nim-nix-pkgs";
  inputs."sdl2_nim".ref   = "master";
  inputs."sdl2_nim".repo  = "sdl2_nim";
  inputs."sdl2_nim".dir   = "";
  inputs."sdl2_nim".type  = "github";
  inputs."sdl2_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp".owner = "nim-nix-pkgs";
  inputs."nimbmp".ref   = "master";
  inputs."nimbmp".repo  = "nimbmp";
  inputs."nimbmp".dir   = "v0_1_8";
  inputs."nimbmp".type  = "github";
  inputs."nimbmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."freetype".owner = "nim-nix-pkgs";
  inputs."freetype".ref   = "master";
  inputs."freetype".repo  = "freetype";
  inputs."freetype".dir   = "";
  inputs."freetype".type  = "github";
  inputs."freetype".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freetype".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polybool".owner = "nim-nix-pkgs";
  inputs."polybool".ref   = "master";
  inputs."polybool".repo  = "polybool";
  inputs."polybool".dir   = "";
  inputs."polybool".type  = "github";
  inputs."polybool".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polybool".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimAGG-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimAGG-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}