{
  description = ''A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-feta-0_0_2.flake = false;
  inputs.src-feta-0_0_2.ref   = "refs/tags/0.0.2";
  inputs.src-feta-0_0_2.owner = "FlorianRauls";
  inputs.src-feta-0_0_2.repo  = "office-DSL-thesis";
  inputs.src-feta-0_0_2.type  = "github";
  
  inputs."mime".owner = "nim-nix-pkgs";
  inputs."mime".ref   = "master";
  inputs."mime".repo  = "mime";
  inputs."mime".dir   = "v0_0_3";
  inputs."mime".type  = "github";
  inputs."mime".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mime".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".dir   = "v0_5_0";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-feta-0_0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-feta-0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}