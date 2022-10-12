{
  description = ''Various Layonara related functions for NWN Development'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-layonara_nwn-master.flake = false;
  inputs.src-layonara_nwn-master.ref   = "refs/heads/master";
  inputs.src-layonara_nwn-master.owner = "plenarius";
  inputs.src-layonara_nwn-master.repo  = "layonara_nwn";
  inputs.src-layonara_nwn-master.type  = "github";
  
  inputs."neverwinter".owner = "nim-nix-pkgs";
  inputs."neverwinter".ref   = "master";
  inputs."neverwinter".repo  = "neverwinter";
  inputs."neverwinter".dir   = "1_5_6";
  inputs."neverwinter".type  = "github";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob".owner = "nim-nix-pkgs";
  inputs."glob".ref   = "master";
  inputs."glob".repo  = "glob";
  inputs."glob".dir   = "v0_11_1";
  inputs."glob".type  = "github";
  inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_7_0";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-layonara_nwn-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-layonara_nwn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}