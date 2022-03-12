{
  description = ''Nim's Windows GUI Framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wnim-master.flake = false;
  inputs.src-wnim-master.owner = "khchen";
  inputs.src-wnim-master.ref   = "refs/heads/master";
  inputs.src-wnim-master.repo  = "wNim";
  inputs.src-wnim-master.type  = "github";
  
  inputs."winim".dir   = "nimpkgs/w/winim";
  inputs."winim".owner = "riinr";
  inputs."winim".ref   = "flake-pinning";
  inputs."winim".repo  = "flake-nimble";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".dir   = "nimpkgs/n/npeg";
  inputs."npeg".owner = "riinr";
  inputs."npeg".ref   = "flake-pinning";
  inputs."npeg".repo  = "flake-nimble";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memlib".dir   = "nimpkgs/m/memlib";
  inputs."memlib".owner = "riinr";
  inputs."memlib".ref   = "flake-pinning";
  inputs."memlib".repo  = "flake-nimble";
  inputs."memlib".type  = "github";
  inputs."memlib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memlib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wNim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wNim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}