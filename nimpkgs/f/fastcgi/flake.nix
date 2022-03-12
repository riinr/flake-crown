{
  description = ''FastCGI library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fastcgi-master".url = "path:./master";
  inputs."fastcgi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastcgi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fastcgi-0_1_0".url = "path:./0_1_0";
  inputs."fastcgi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fastcgi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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