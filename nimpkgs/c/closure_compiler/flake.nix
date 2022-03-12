{
  description = ''Bindings for Closure Compiler web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."closure_compiler-master".url = "path:./master";
  inputs."closure_compiler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_2".url = "path:./v0_2";
  inputs."closure_compiler-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3".url = "path:./v0_3";
  inputs."closure_compiler-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_1".url = "path:./v0_3_1";
  inputs."closure_compiler-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_2".url = "path:./v0_3_2";
  inputs."closure_compiler-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_3".url = "path:./v0_3_3";
  inputs."closure_compiler-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_4".url = "path:./v0_3_4";
  inputs."closure_compiler-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."closure_compiler-v0_3_5".url = "path:./v0_3_5";
  inputs."closure_compiler-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."closure_compiler-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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