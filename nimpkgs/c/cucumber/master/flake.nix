{
  description = ''Implements Cucumber BDD system in nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cucumber-master.flake = false;
  inputs.src-cucumber-master.ref   = "refs/heads/master";
  inputs.src-cucumber-master.owner = "shaunc";
  inputs.src-cucumber-master.repo  = "cucumber_nim";
  inputs.src-cucumber-master.type  = "github";
  
  inputs."nre".owner = "nim-nix-pkgs";
  inputs."nre".ref   = "master";
  inputs."nre".repo  = "nre";
  inputs."nre".dir   = "2_0_2";
  inputs."nre".type  = "github";
  inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer".owner = "nim-nix-pkgs";
  inputs."commandeer".ref   = "master";
  inputs."commandeer".repo  = "commandeer";
  inputs."commandeer".dir   = "0_12_3";
  inputs."commandeer".type  = "github";
  inputs."commandeer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile".owner = "nim-nix-pkgs";
  inputs."tempfile".ref   = "master";
  inputs."tempfile".repo  = "tempfile";
  inputs."tempfile".dir   = "0_1_7";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cucumber-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cucumber-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}