{
  description = ''zopflipng-like png optimization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zopflipng-master".url = "path:./master";
  inputs."zopflipng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zopflipng-v0_1_3".url = "path:./v0_1_3";
  inputs."zopflipng-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zopflipng-v0_1_4".url = "path:./v0_1_4";
  inputs."zopflipng-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zopflipng-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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