{
  description = ''ptrace wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ptrace-master".url = "path:./master";
  inputs."ptrace-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace-0_0_2".url = "path:./0_0_2";
  inputs."ptrace-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace-0_0_3".url = "path:./0_0_3";
  inputs."ptrace-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptrace-0_0_4".url = "path:./0_0_4";
  inputs."ptrace-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptrace-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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