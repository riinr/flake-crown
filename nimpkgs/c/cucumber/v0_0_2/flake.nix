{
  description = ''Implements Cucumber BDD system in nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cucumber_nim-v0_0_2.flake = false;
  inputs.src-cucumber_nim-v0_0_2.ref   = "refs/tags/v0.0.2";
  inputs.src-cucumber_nim-v0_0_2.owner = "shaunc";
  inputs.src-cucumber_nim-v0_0_2.repo  = "cucumber_nim";
  inputs.src-cucumber_nim-v0_0_2.type  = "github";
  
  inputs."nre".owner = "nim-nix-pkgs";
  inputs."nre".ref   = "master";
  inputs."nre".repo  = "nre";
  inputs."nre".dir   = "2_0_2";
  inputs."nre".type  = "github";
  inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."comandeer".owner = "nim-nix-pkgs";
  inputs."comandeer".ref   = "master";
  inputs."comandeer".repo  = "comandeer";
  inputs."comandeer".dir   = "";
  inputs."comandeer".type  = "github";
  inputs."comandeer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."comandeer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cucumber_nim-v0_0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cucumber_nim-v0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}