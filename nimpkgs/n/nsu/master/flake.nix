{
  description = ''Simple screenshot library & cli tool made in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nsu-master.flake = false;
  inputs.src-nsu-master.owner = "Senketsu";
  inputs.src-nsu-master.ref   = "refs/heads/master";
  inputs.src-nsu-master.repo  = "nsu";
  inputs.src-nsu-master.type  = "github";
  
  inputs."x11".dir   = "nimpkgs/x/x11";
  inputs."x11".owner = "riinr";
  inputs."x11".ref   = "flake-pinning";
  inputs."x11".repo  = "flake-nimble";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim".dir   = "nimpkgs/w/winim";
  inputs."winim".owner = "riinr";
  inputs."winim".ref   = "flake-pinning";
  inputs."winim".repo  = "flake-nimble";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nsu-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nsu-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}