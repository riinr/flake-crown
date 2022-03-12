{
  description = ''RIFF file handling for Nim '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."riff-master".url = "path:./master";
  inputs."riff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."riff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."riff-v0_2_0".url = "path:./v0_2_0";
  inputs."riff-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."riff-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}