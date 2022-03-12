{
  description = ''Very simple browser Javascript TTY web terminal'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webterminal-master".url = "path:./master";
  inputs."webterminal-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webterminal-v0_0_1".url = "path:./v0_0_1";
  inputs."webterminal-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webterminal-v0_0_2".url = "path:./v0_0_2";
  inputs."webterminal-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webterminal-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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