{
  description = ''Simple screenshot library & cli tool made in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nsu-v0_1_5.flake = false;
  inputs.src-nsu-v0_1_5.owner = "Senketsu";
  inputs.src-nsu-v0_1_5.ref   = "refs/tags/v0.1.5";
  inputs.src-nsu-v0_1_5.repo  = "nsu";
  inputs.src-nsu-v0_1_5.type  = "github";
  
  inputs."x11".dir   = "nimpkgs/x/x11";
  inputs."x11".owner = "riinr";
  inputs."x11".ref   = "flake-pinning";
  inputs."x11".repo  = "flake-nimble";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oldwinapi".dir   = "nimpkgs/o/oldwinapi";
  inputs."oldwinapi".owner = "riinr";
  inputs."oldwinapi".ref   = "flake-pinning";
  inputs."oldwinapi".repo  = "flake-nimble";
  inputs."oldwinapi".type  = "github";
  inputs."oldwinapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."png".dir   = "nimpkgs/p/png";
  inputs."png".owner = "riinr";
  inputs."png".ref   = "flake-pinning";
  inputs."png".repo  = "flake-nimble";
  inputs."png".type  = "github";
  inputs."png".inputs.nixpkgs.follows = "nixpkgs";
  inputs."png".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nsu-v0_1_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nsu-v0_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}