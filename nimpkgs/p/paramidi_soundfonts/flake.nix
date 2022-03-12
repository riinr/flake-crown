{
  description = ''Soundfonts for paramidi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paramidi_soundfonts-master".url = "path:./master";
  inputs."paramidi_soundfonts-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi_soundfonts-0_1_0".url = "path:./0_1_0";
  inputs."paramidi_soundfonts-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi_soundfonts-0_2_0".url = "path:./0_2_0";
  inputs."paramidi_soundfonts-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi_soundfonts-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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