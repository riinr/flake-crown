{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zfblast-master".url = "path:./master";
  inputs."zfblast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-0_1_19".url = "path:./0_1_19";
  inputs."zfblast-0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_0".url = "path:./v0_1_0";
  inputs."zfblast-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_1".url = "path:./v0_1_1";
  inputs."zfblast-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_10".url = "path:./v0_1_10";
  inputs."zfblast-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_14".url = "path:./v0_1_14";
  inputs."zfblast-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_16".url = "path:./v0_1_16";
  inputs."zfblast-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_17".url = "path:./v0_1_17";
  inputs."zfblast-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_17-old".url = "path:./v0_1_17-old";
  inputs."zfblast-v0_1_17-old".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_17-old".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_19".url = "path:./v0_1_19";
  inputs."zfblast-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_2".url = "path:./v0_1_2";
  inputs."zfblast-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_3".url = "path:./v0_1_3";
  inputs."zfblast-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_4".url = "path:./v0_1_4";
  inputs."zfblast-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_5".url = "path:./v0_1_5";
  inputs."zfblast-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_6".url = "path:./v0_1_6";
  inputs."zfblast-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_6-stable".url = "path:./v0_1_6-stable";
  inputs."zfblast-v0_1_6-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_6-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_7".url = "path:./v0_1_7";
  inputs."zfblast-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_2".url = "path:./v0_2_2";
  inputs."zfblast-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_3".url = "path:./v0_2_3";
  inputs."zfblast-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_3-beta".url = "path:./v0_2_3-beta";
  inputs."zfblast-v0_2_3-beta".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_3-beta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_4".url = "path:./v0_2_4";
  inputs."zfblast-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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