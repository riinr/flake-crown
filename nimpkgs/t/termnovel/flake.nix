{
  description = ''A command that to read novel on terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."termnovel-master".url = "path:./master";
  inputs."termnovel-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termnovel-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termnovel-1_0_0".url = "path:./1_0_0";
  inputs."termnovel-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termnovel-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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