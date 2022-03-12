{
  description = ''Load Windows DLL from memory'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-memlib-master.flake = false;
  inputs.src-memlib-master.owner = "khchen";
  inputs.src-memlib-master.ref   = "refs/heads/master";
  inputs.src-memlib-master.repo  = "memlib";
  inputs.src-memlib-master.type  = "github";
  
  inputs."winim".dir   = "nimpkgs/w/winim";
  inputs."winim".owner = "riinr";
  inputs."winim".ref   = "flake-pinning";
  inputs."winim".repo  = "flake-nimble";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."minhook".dir   = "nimpkgs/m/minhook";
  inputs."minhook".owner = "riinr";
  inputs."minhook".ref   = "flake-pinning";
  inputs."minhook".repo  = "flake-nimble";
  inputs."minhook".type  = "github";
  inputs."minhook".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minhook".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-memlib-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-memlib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}