{
  description = ''A port of libnx to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libnx-master".url = "path:./master";
  inputs."libnx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libnx-0_1_6".url = "path:./0_1_6";
  inputs."libnx-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libnx-0_1_8".url = "path:./0_1_8";
  inputs."libnx-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libnx-0_2_1".url = "path:./0_2_1";
  inputs."libnx-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libnx-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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