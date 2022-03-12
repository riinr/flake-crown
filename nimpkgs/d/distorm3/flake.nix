{
  description = ''Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."distorm3-master".url = "path:./master";
  inputs."distorm3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distorm3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distorm3-3_5_2".url = "path:./3_5_2";
  inputs."distorm3-3_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distorm3-3_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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