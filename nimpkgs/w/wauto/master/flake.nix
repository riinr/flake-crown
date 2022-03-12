{
  description = ''Windows automation module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wauto-master.flake = false;
  inputs.src-wauto-master.owner = "khchen";
  inputs.src-wauto-master.ref   = "refs/heads/master";
  inputs.src-wauto-master.repo  = "wAuto";
  inputs.src-wauto-master.type  = "github";
  
  inputs."winim".dir   = "nimpkgs/w/winim";
  inputs."winim".owner = "riinr";
  inputs."winim".ref   = "flake-pinning";
  inputs."winim".repo  = "flake-nimble";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wnim".dir   = "nimpkgs/w/wnim";
  inputs."wnim".owner = "riinr";
  inputs."wnim".ref   = "flake-pinning";
  inputs."wnim".repo  = "flake-nimble";
  inputs."wnim".type  = "github";
  inputs."wnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".dir   = "nimpkgs/n/npeg";
  inputs."npeg".owner = "riinr";
  inputs."npeg".ref   = "flake-pinning";
  inputs."npeg".repo  = "flake-nimble";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wAuto-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wAuto-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}