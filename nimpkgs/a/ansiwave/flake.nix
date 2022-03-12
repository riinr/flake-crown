{
  description = ''ANSI art + MIDI music editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ansiwave-master".url = "path:./master";
  inputs."ansiwave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0".url = "path:./0_1_0";
  inputs."ansiwave-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0-linux".url = "path:./0_1_0-linux";
  inputs."ansiwave-0_1_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0-macos".url = "path:./0_1_0-macos";
  inputs."ansiwave-0_1_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_1_0-windows".url = "path:./0_1_0-windows";
  inputs."ansiwave-0_1_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_1_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0".url = "path:./0_2_0";
  inputs."ansiwave-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0-linux".url = "path:./0_2_0-linux";
  inputs."ansiwave-0_2_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0-macos".url = "path:./0_2_0-macos";
  inputs."ansiwave-0_2_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_2_0-windows".url = "path:./0_2_0-windows";
  inputs."ansiwave-0_2_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_2_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0".url = "path:./0_3_0";
  inputs."ansiwave-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0-linux".url = "path:./0_3_0-linux";
  inputs."ansiwave-0_3_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0-macos".url = "path:./0_3_0-macos";
  inputs."ansiwave-0_3_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_3_0-windows".url = "path:./0_3_0-windows";
  inputs."ansiwave-0_3_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_3_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0".url = "path:./0_4_0";
  inputs."ansiwave-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0-linux".url = "path:./0_4_0-linux";
  inputs."ansiwave-0_4_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0-macos".url = "path:./0_4_0-macos";
  inputs."ansiwave-0_4_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_4_0-windows".url = "path:./0_4_0-windows";
  inputs."ansiwave-0_4_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_4_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0".url = "path:./0_5_0";
  inputs."ansiwave-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0-linux".url = "path:./0_5_0-linux";
  inputs."ansiwave-0_5_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0-macos".url = "path:./0_5_0-macos";
  inputs."ansiwave-0_5_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_5_0-windows".url = "path:./0_5_0-windows";
  inputs."ansiwave-0_5_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_5_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0".url = "path:./0_6_0";
  inputs."ansiwave-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0-linux".url = "path:./0_6_0-linux";
  inputs."ansiwave-0_6_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0-macos".url = "path:./0_6_0-macos";
  inputs."ansiwave-0_6_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_6_0-windows".url = "path:./0_6_0-windows";
  inputs."ansiwave-0_6_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_6_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0".url = "path:./0_7_0";
  inputs."ansiwave-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0-linux".url = "path:./0_7_0-linux";
  inputs."ansiwave-0_7_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0-macos".url = "path:./0_7_0-macos";
  inputs."ansiwave-0_7_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-0_7_0-windows".url = "path:./0_7_0-windows";
  inputs."ansiwave-0_7_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-0_7_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0".url = "path:./1_0_0";
  inputs."ansiwave-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0-linux".url = "path:./1_0_0-linux";
  inputs."ansiwave-1_0_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0-macos".url = "path:./1_0_0-macos";
  inputs."ansiwave-1_0_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_0-windows".url = "path:./1_0_0-windows";
  inputs."ansiwave-1_0_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1".url = "path:./1_0_1";
  inputs."ansiwave-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1-linux".url = "path:./1_0_1-linux";
  inputs."ansiwave-1_0_1-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1-macos".url = "path:./1_0_1-macos";
  inputs."ansiwave-1_0_1-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_1-windows".url = "path:./1_0_1-windows";
  inputs."ansiwave-1_0_1-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_1-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2".url = "path:./1_0_2";
  inputs."ansiwave-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2-linux".url = "path:./1_0_2-linux";
  inputs."ansiwave-1_0_2-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2-macos".url = "path:./1_0_2-macos";
  inputs."ansiwave-1_0_2-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_0_2-windows".url = "path:./1_0_2-windows";
  inputs."ansiwave-1_0_2-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_0_2-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0".url = "path:./1_1_0";
  inputs."ansiwave-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0-linux".url = "path:./1_1_0-linux";
  inputs."ansiwave-1_1_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0-macos".url = "path:./1_1_0-macos";
  inputs."ansiwave-1_1_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_1_0-windows".url = "path:./1_1_0-windows";
  inputs."ansiwave-1_1_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_1_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0".url = "path:./1_2_0";
  inputs."ansiwave-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0-linux".url = "path:./1_2_0-linux";
  inputs."ansiwave-1_2_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0-macos".url = "path:./1_2_0-macos";
  inputs."ansiwave-1_2_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_0-windows".url = "path:./1_2_0-windows";
  inputs."ansiwave-1_2_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1".url = "path:./1_2_1";
  inputs."ansiwave-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1-linux".url = "path:./1_2_1-linux";
  inputs."ansiwave-1_2_1-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1-macos".url = "path:./1_2_1-macos";
  inputs."ansiwave-1_2_1-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_1-windows".url = "path:./1_2_1-windows";
  inputs."ansiwave-1_2_1-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_1-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2".url = "path:./1_2_2";
  inputs."ansiwave-1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2-linux".url = "path:./1_2_2-linux";
  inputs."ansiwave-1_2_2-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2-macos".url = "path:./1_2_2-macos";
  inputs."ansiwave-1_2_2-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_2-windows".url = "path:./1_2_2-windows";
  inputs."ansiwave-1_2_2-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_2-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_3".url = "path:./1_2_3";
  inputs."ansiwave-1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_4".url = "path:./1_2_4";
  inputs."ansiwave-1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6".url = "path:./1_2_6";
  inputs."ansiwave-1_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6-linux".url = "path:./1_2_6-linux";
  inputs."ansiwave-1_2_6-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6-macos".url = "path:./1_2_6-macos";
  inputs."ansiwave-1_2_6-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_2_6-windows".url = "path:./1_2_6-windows";
  inputs."ansiwave-1_2_6-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_2_6-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0".url = "path:./1_3_0";
  inputs."ansiwave-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0-linux".url = "path:./1_3_0-linux";
  inputs."ansiwave-1_3_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0-macos".url = "path:./1_3_0-macos";
  inputs."ansiwave-1_3_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_0-windows".url = "path:./1_3_0-windows";
  inputs."ansiwave-1_3_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1".url = "path:./1_3_1";
  inputs."ansiwave-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1-linux".url = "path:./1_3_1-linux";
  inputs."ansiwave-1_3_1-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1-macos".url = "path:./1_3_1-macos";
  inputs."ansiwave-1_3_1-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_1-windows".url = "path:./1_3_1-windows";
  inputs."ansiwave-1_3_1-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_1-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2".url = "path:./1_3_2";
  inputs."ansiwave-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2-linux".url = "path:./1_3_2-linux";
  inputs."ansiwave-1_3_2-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2-macos".url = "path:./1_3_2-macos";
  inputs."ansiwave-1_3_2-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_2-windows".url = "path:./1_3_2-windows";
  inputs."ansiwave-1_3_2-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_2-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3".url = "path:./1_3_3";
  inputs."ansiwave-1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3-linux".url = "path:./1_3_3-linux";
  inputs."ansiwave-1_3_3-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3-macos".url = "path:./1_3_3-macos";
  inputs."ansiwave-1_3_3-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_3-windows".url = "path:./1_3_3-windows";
  inputs."ansiwave-1_3_3-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_3-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4".url = "path:./1_3_4";
  inputs."ansiwave-1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4-linux".url = "path:./1_3_4-linux";
  inputs."ansiwave-1_3_4-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4-macos".url = "path:./1_3_4-macos";
  inputs."ansiwave-1_3_4-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_4-windows".url = "path:./1_3_4-windows";
  inputs."ansiwave-1_3_4-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_4-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5".url = "path:./1_3_5";
  inputs."ansiwave-1_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5-linux".url = "path:./1_3_5-linux";
  inputs."ansiwave-1_3_5-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5-macos".url = "path:./1_3_5-macos";
  inputs."ansiwave-1_3_5-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_3_5-windows".url = "path:./1_3_5-windows";
  inputs."ansiwave-1_3_5-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_3_5-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0".url = "path:./1_4_0";
  inputs."ansiwave-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0-linux".url = "path:./1_4_0-linux";
  inputs."ansiwave-1_4_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0-macos".url = "path:./1_4_0-macos";
  inputs."ansiwave-1_4_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_0-windows".url = "path:./1_4_0-windows";
  inputs."ansiwave-1_4_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_1".url = "path:./1_4_1";
  inputs."ansiwave-1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_2".url = "path:./1_4_2";
  inputs."ansiwave-1_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_4_3".url = "path:./1_4_3";
  inputs."ansiwave-1_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0".url = "path:./1_5_0";
  inputs."ansiwave-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0-linux".url = "path:./1_5_0-linux";
  inputs."ansiwave-1_5_0-linux".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0-linux".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0-macos".url = "path:./1_5_0-macos";
  inputs."ansiwave-1_5_0-macos".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0-macos".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ansiwave-1_5_0-windows".url = "path:./1_5_0-windows";
  inputs."ansiwave-1_5_0-windows".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiwave-1_5_0-windows".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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