{
  description = ''A set of simple modules for writing a JavaScript 2D game.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gamelight-master.flake = false;
  inputs.src-gamelight-master.owner = "dom96";
  inputs.src-gamelight-master.ref   = "refs/heads/master";
  inputs.src-gamelight-master.repo  = "gamelight";
  inputs.src-gamelight-master.type  = "github";
  
  inputs."sdl2".dir   = "nimpkgs/s/sdl2";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".ref   = "flake-pinning";
  inputs."sdl2".repo  = "flake-nimble";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography".dir   = "nimpkgs/t/typography";
  inputs."typography".owner = "riinr";
  inputs."typography".ref   = "flake-pinning";
  inputs."typography".repo  = "flake-nimble";
  inputs."typography".type  = "github";
  inputs."typography".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy".dir   = "nimpkgs/f/flippy";
  inputs."flippy".owner = "riinr";
  inputs."flippy".ref   = "flake-pinning";
  inputs."flippy".repo  = "flake-nimble";
  inputs."flippy".type  = "github";
  inputs."flippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gamelight-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gamelight-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}