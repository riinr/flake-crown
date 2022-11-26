{
  description = ''Nim newsgroup NNTP server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimnews-master.flake = false;
  inputs.src-nimnews-master.ref   = "refs/heads/master";
  inputs.src-nimnews-master.owner = "mildred";
  inputs.src-nimnews-master.repo  = "nimnews";
  inputs.src-nimnews-master.type  = "github";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_7_0";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nuuid".owner = "nim-nix-pkgs";
  inputs."nuuid".ref   = "master";
  inputs."nuuid".repo  = "nuuid";
  inputs."nuuid".dir   = "master";
  inputs."nuuid".type  = "github";
  inputs."nuuid".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nuuid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."passgen".owner = "nim-nix-pkgs";
  inputs."passgen".ref   = "master";
  inputs."passgen".repo  = "passgen";
  inputs."passgen".dir   = "0_2_0";
  inputs."passgen".type  = "github";
  inputs."passgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".owner = "nim-nix-pkgs";
  inputs."npeg".ref   = "master";
  inputs."npeg".repo  = "npeg";
  inputs."npeg".dir   = "0_27_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/mildred/scram.nim".owner = "nim-nix-pkgs";
  inputs."github.com/mildred/scram.nim".ref   = "master";
  inputs."github.com/mildred/scram.nim".repo  = "github.com/mildred/scram.nim";
  inputs."github.com/mildred/scram.nim".dir   = "";
  inputs."github.com/mildred/scram.nim".type  = "github";
  inputs."github.com/mildred/scram.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/mildred/scram.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimassets".owner = "nim-nix-pkgs";
  inputs."nimassets".ref   = "master";
  inputs."nimassets".repo  = "nimassets";
  inputs."nimassets".dir   = "master";
  inputs."nimassets".type  = "github";
  inputs."nimassets".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimassets".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue".owner = "nim-nix-pkgs";
  inputs."prologue".ref   = "master";
  inputs."prologue".repo  = "prologue";
  inputs."prologue".dir   = "v0_6_4";
  inputs."prologue".type  = "github";
  inputs."prologue".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."templates".owner = "nim-nix-pkgs";
  inputs."templates".ref   = "master";
  inputs."templates".repo  = "templates";
  inputs."templates".dir   = "master";
  inputs."templates".type  = "github";
  inputs."templates".inputs.nixpkgs.follows = "nixpkgs";
  inputs."templates".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctools".owner = "nim-nix-pkgs";
  inputs."asynctools".ref   = "master";
  inputs."asynctools".repo  = "asynctools";
  inputs."asynctools".dir   = "master";
  inputs."asynctools".type  = "github";
  inputs."asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimnews-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimnews-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}