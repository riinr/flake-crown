{
  description = ''Wrapper for linenoise, a free, self-contained alternative to GNU readline.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."linenoise-master".url = "path:./master";
  inputs."linenoise-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linenoise-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linenoise-v0_1_0".url = "path:./v0_1_0";
  inputs."linenoise-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linenoise-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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