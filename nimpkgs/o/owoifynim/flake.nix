{
  description = ''Turning your worst nightmare into a Nim package. This is a Nim port of mohan-cao's owoify-js, which will help you turn any string into nonsensical babyspeak similar to LeafySweet's infamous Chrome extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."owoifynim-main".dir   = "main";
  inputs."owoifynim-main".owner = "nim-nix-pkgs";
  inputs."owoifynim-main".ref   = "master";
  inputs."owoifynim-main".repo  = "owoifynim";
  inputs."owoifynim-main".type  = "github";
  inputs."owoifynim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."owoifynim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}