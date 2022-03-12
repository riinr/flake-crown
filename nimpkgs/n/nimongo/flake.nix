{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimongo-master".url = "path:./master";
  inputs."nimongo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimongo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimongo-v0_1_0".url = "path:./v0_1_0";
  inputs."nimongo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimongo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimongo-v0_2_0".url = "path:./v0_2_0";
  inputs."nimongo-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimongo-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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