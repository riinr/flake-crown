{
  description = ''A domain-specific language for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-feta-main.flake = false;
  inputs.src-feta-main.ref   = "refs/heads/main";
  inputs.src-feta-main.owner = "FlorianRauls";
  inputs.src-feta-main.repo  = "office-DSL-thesis";
  inputs.src-feta-main.type  = "github";
  
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
  
  inputs."googleapi".owner = "nim-nix-pkgs";
  inputs."googleapi".ref   = "master";
  inputs."googleapi".repo  = "googleapi";
  inputs."googleapi".dir   = "0_1_4";
  inputs."googleapi".type  = "github";
  inputs."googleapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws".owner = "nim-nix-pkgs";
  inputs."ws".ref   = "master";
  inputs."ws".repo  = "ws";
  inputs."ws".dir   = "0_5_0";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-feta-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-feta-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}