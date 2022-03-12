{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimview-main".url = "path:./main";
  inputs."nimview-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_0".url = "path:./0_2_0";
  inputs."nimview-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_1".url = "path:./0_2_1";
  inputs."nimview-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_2".url = "path:./0_2_2";
  inputs."nimview-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_2_3".url = "path:./0_2_3";
  inputs."nimview-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_0".url = "path:./0_3_0";
  inputs."nimview-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_1".url = "path:./0_3_1";
  inputs."nimview-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_2".url = "path:./0_3_2";
  inputs."nimview-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_3_3".url = "path:./0_3_3";
  inputs."nimview-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_4_0".url = "path:./0_4_0";
  inputs."nimview-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_4_1".url = "path:./0_4_1";
  inputs."nimview-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-0_4_2".url = "path:./0_4_2";
  inputs."nimview-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-v0_1_1".url = "path:./v0_1_1";
  inputs."nimview-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimview-v0_1_2".url = "path:./v0_1_2";
  inputs."nimview-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimview-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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