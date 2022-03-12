{
  description = ''Selectors extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ioselectors-master".url = "path:./master";
  inputs."ioselectors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_0".url = "path:./v0_1_0";
  inputs."ioselectors-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_2".url = "path:./v0_1_2";
  inputs."ioselectors-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_4".url = "path:./v0_1_4";
  inputs."ioselectors-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_6".url = "path:./v0_1_6";
  inputs."ioselectors-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ioselectors-v0_1_8".url = "path:./v0_1_8";
  inputs."ioselectors-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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