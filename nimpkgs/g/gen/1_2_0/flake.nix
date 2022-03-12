{
  description = ''Boilerplate generator for Jester web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gen-1_2_0.flake = false;
  inputs.src-gen-1_2_0.owner = "Adeohluwa";
  inputs.src-gen-1_2_0.ref   = "refs/tags/1.2.0";
  inputs.src-gen-1_2_0.repo  = "gen";
  inputs.src-gen-1_2_0.type  = "github";
  
  inputs."progress".dir   = "nimpkgs/p/progress";
  inputs."progress".owner = "riinr";
  inputs."progress".ref   = "flake-pinning";
  inputs."progress".repo  = "flake-nimble";
  inputs."progress".type  = "github";
  inputs."progress".inputs.nixpkgs.follows = "nixpkgs";
  inputs."progress".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fab".dir   = "nimpkgs/f/fab";
  inputs."fab".owner = "riinr";
  inputs."fab".ref   = "flake-pinning";
  inputs."fab".repo  = "flake-nimble";
  inputs."fab".type  = "github";
  inputs."fab".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fab".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gara".dir   = "nimpkgs/g/gara";
  inputs."gara".owner = "riinr";
  inputs."gara".ref   = "flake-pinning";
  inputs."gara".repo  = "flake-nimble";
  inputs."gara".type  = "github";
  inputs."gara".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gara".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gen-1_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gen-1_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}