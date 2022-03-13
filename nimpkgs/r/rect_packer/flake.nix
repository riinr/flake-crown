{
  description = ''Pack rects into bigger rect'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rect_packer-master".dir   = "master";
  inputs."rect_packer-master".owner = "nim-nix-pkgs";
  inputs."rect_packer-master".ref   = "master";
  inputs."rect_packer-master".repo  = "rect_packer";
  inputs."rect_packer-master".type  = "github";
  inputs."rect_packer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rect_packer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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