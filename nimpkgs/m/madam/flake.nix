{
  description = ''Local webserver for Design Prototyping and Front-end Development'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."madam-main".dir   = "main";
  inputs."madam-main".owner = "nim-nix-pkgs";
  inputs."madam-main".ref   = "master";
  inputs."madam-main".repo  = "madam";
  inputs."madam-main".type  = "github";
  inputs."madam-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."madam-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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