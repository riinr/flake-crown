{
  description = ''Hi Fidelity Rendering Engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimAGG-master.flake = false;
  inputs.src-nimAGG-master.owner = "jangko";
  inputs.src-nimAGG-master.ref   = "refs/heads/master";
  inputs.src-nimAGG-master.repo  = "nimAGG";
  inputs.src-nimAGG-master.type  = "github";
  
  inputs."sdl2_nim".dir   = "nimpkgs/s/sdl2_nim";
  inputs."sdl2_nim".owner = "riinr";
  inputs."sdl2_nim".ref   = "flake-pinning";
  inputs."sdl2_nim".repo  = "flake-nimble";
  inputs."sdl2_nim".type  = "github";
  inputs."sdl2_nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2_nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbmp".dir   = "nimpkgs/n/nimbmp";
  inputs."nimbmp".owner = "riinr";
  inputs."nimbmp".ref   = "flake-pinning";
  inputs."nimbmp".repo  = "flake-nimble";
  inputs."nimbmp".type  = "github";
  inputs."nimbmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."freetype".dir   = "nimpkgs/f/freetype";
  inputs."freetype".owner = "riinr";
  inputs."freetype".ref   = "flake-pinning";
  inputs."freetype".repo  = "flake-nimble";
  inputs."freetype".type  = "github";
  inputs."freetype".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freetype".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."polybool".dir   = "nimpkgs/p/polybool";
  inputs."polybool".owner = "riinr";
  inputs."polybool".ref   = "flake-pinning";
  inputs."polybool".repo  = "flake-nimble";
  inputs."polybool".type  = "github";
  inputs."polybool".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polybool".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimAGG-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimAGG-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}