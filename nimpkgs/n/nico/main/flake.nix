{
  description = ''Nico game engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nico-main.flake = false;
  inputs.src-nico-main.owner = "ftsf";
  inputs.src-nico-main.ref   = "refs/heads/main";
  inputs.src-nico-main.repo  = "nico";
  inputs.src-nico-main.type  = "github";
  
  inputs."sdl2_nim".dir   = "nimpkgs/s/sdl2_nim";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".ref   = "flake-pinning";
  inputs."sdl2_nim".repo  = "flake-nimble";
  inputs."sdl2_nim".type  = "github";
  inputs."sdl2_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gifenc".dir   = "nimpkgs/g/gifenc";
  inputs."gifenc".owner = "riinr";
  inputs."gifenc".ref   = "flake-pinning";
  inputs."gifenc".repo  = "flake-nimble";
  inputs."gifenc".type  = "github";
  inputs."gifenc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gifenc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng".dir   = "nimpkgs/n/nimpng";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".ref   = "flake-pinning";
  inputs."nimpng".repo  = "flake-nimble";
  inputs."nimpng".type  = "github";
  inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nico-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nico-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}