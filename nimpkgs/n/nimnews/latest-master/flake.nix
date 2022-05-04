{
  description = ''Nim newsgroup NNTP server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimnews-latest-master.flake = false;
  inputs.src-nimnews-latest-master.ref   = "refs/tags/latest-master";
  inputs.src-nimnews-latest-master.owner = "mildred";
  inputs.src-nimnews-latest-master.repo  = "nimnews";
  inputs.src-nimnews-latest-master.type  = "github";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_6_8";
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
  
  inputs."scram".owner = "nim-nix-pkgs";
  inputs."scram".ref   = "master";
  inputs."scram".repo  = "scram";
  inputs."scram".dir   = "0_1_13";
  inputs."scram".type  = "github";
  inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  inputs."npeg".dir   = "0_26_0";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimassets".owner = "nim-nix-pkgs";
  inputs."nimassets".ref   = "master";
  inputs."nimassets".repo  = "nimassets";
  inputs."nimassets".dir   = "master";
  inputs."nimassets".type  = "github";
  inputs."nimassets".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimassets".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".dir   = "v0_5_0";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimnews-latest-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimnews-latest-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}