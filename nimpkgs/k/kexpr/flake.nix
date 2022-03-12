{
  description = ''wrapper for kexpr math expression evaluation library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."kexpr-master".url = "path:./master";
  inputs."kexpr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kexpr-v0_0_2".url = "path:./v0_0_2";
  inputs."kexpr-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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