{
  description = ''Rapid serial text presenter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hottext-v1_3.flake = false;
  inputs.src-hottext-v1_3.owner = "~ehmry";
  inputs.src-hottext-v1_3.ref   = "refs/tags/v1.3";
  inputs.src-hottext-v1_3.repo  = "hottext";
  inputs.src-hottext-v1_3.type  = "other";
  
  inputs."sdl2".dir   = "nimpkgs/s/sdl2";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".ref   = "flake-pinning";
  inputs."sdl2".repo  = "flake-nimble";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography".dir   = "nimpkgs/t/typography";
  inputs."typography".owner = "riinr";
  inputs."typography".ref   = "flake-pinning";
  inputs."typography".repo  = "flake-nimble";
  inputs."typography".type  = "github";
  inputs."typography".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hottext-v1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hottext-v1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}