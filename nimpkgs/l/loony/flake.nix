{
  description = ''Lock-free threadsafe MPMC with high throughput'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."loony-main".url = "path:./main";
  inputs."loony-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_0".url = "path:./0_1_0";
  inputs."loony-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_1".url = "path:./0_1_1";
  inputs."loony-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_10".url = "path:./0_1_10";
  inputs."loony-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_11".url = "path:./0_1_11";
  inputs."loony-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_12".url = "path:./0_1_12";
  inputs."loony-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_2".url = "path:./0_1_2";
  inputs."loony-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_3".url = "path:./0_1_3";
  inputs."loony-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_5".url = "path:./0_1_5";
  inputs."loony-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_6".url = "path:./0_1_6";
  inputs."loony-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_7".url = "path:./0_1_7";
  inputs."loony-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_8".url = "path:./0_1_8";
  inputs."loony-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_9".url = "path:./0_1_9";
  inputs."loony-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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