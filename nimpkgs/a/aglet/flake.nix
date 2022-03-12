{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aglet-master".url = "path:./master";
  inputs."aglet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_1_0".url = "path:./0_1_0";
  inputs."aglet-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_2_0".url = "path:./0_2_0";
  inputs."aglet-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_2_1".url = "path:./0_2_1";
  inputs."aglet-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_0".url = "path:./0_3_0";
  inputs."aglet-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_1".url = "path:./0_3_1";
  inputs."aglet-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_2".url = "path:./0_3_2";
  inputs."aglet-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_3".url = "path:./0_3_3";
  inputs."aglet-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_0".url = "path:./0_4_0";
  inputs."aglet-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_1".url = "path:./0_4_1";
  inputs."aglet-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_2".url = "path:./0_4_2";
  inputs."aglet-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_3".url = "path:./0_4_3";
  inputs."aglet-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_4".url = "path:./0_4_4";
  inputs."aglet-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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