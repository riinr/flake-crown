{
  description = ''A DFA based regex engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nregex-v0_0_3.flake = false;
  inputs.src-nregex-v0_0_3.ref   = "refs/tags/v0.0.3";
  inputs.src-nregex-v0_0_3.owner = "nitely";
  inputs.src-nregex-v0_0_3.repo  = "nregex";
  inputs.src-nregex-v0_0_3.type  = "github";
  
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
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nregex-v0_0_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nregex-v0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}