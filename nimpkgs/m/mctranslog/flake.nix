{
  description = ''mctranslog - Transaction Log Package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mctranslog-master".url = "path:./master";
  inputs."mctranslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mctranslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mctranslog-v0_1_4".url = "path:./v0_1_4";
  inputs."mctranslog-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mctranslog-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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