{
  description = ''Various Layonara related functions for NWN Development'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-layonara_nwn-master.flake = false;
  inputs.src-layonara_nwn-master.owner = "plenarius";
  inputs.src-layonara_nwn-master.ref   = "refs/heads/master";
  inputs.src-layonara_nwn-master.repo  = "layonara_nwn";
  inputs.src-layonara_nwn-master.type  = "github";
  
  inputs."neverwinter".dir   = "nimpkgs/n/neverwinter";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".ref   = "flake-pinning";
  inputs."neverwinter".repo  = "flake-nimble";
  inputs."neverwinter".type  = "github";
  inputs."neverwinter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glob".dir   = "nimpkgs/g/glob";
  inputs."glob".owner = "riinr";
  inputs."glob".ref   = "flake-pinning";
  inputs."glob".repo  = "flake-nimble";
  inputs."glob".type  = "github";
  inputs."glob".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glob".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-layonara_nwn-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-layonara_nwn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}