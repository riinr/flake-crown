{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zfplugs-master".url = "path:./master";
  inputs."zfplugs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_19".url = "path:./0_0_19";
  inputs."zfplugs-0_0_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_20".url = "path:./0_0_20";
  inputs."zfplugs-0_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_21".url = "path:./0_0_21";
  inputs."zfplugs-0_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_22".url = "path:./0_0_22";
  inputs."zfplugs-0_0_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_23".url = "path:./0_0_23";
  inputs."zfplugs-0_0_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_1_1".url = "path:./0_1_1";
  inputs."zfplugs-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_1_2".url = "path:./0_1_2";
  inputs."zfplugs-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_1_4".url = "path:./0_1_4";
  inputs."zfplugs-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_3".url = "path:./v0_0_3";
  inputs."zfplugs-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_5".url = "path:./v0_0_5";
  inputs."zfplugs-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_6".url = "path:./v0_0_6";
  inputs."zfplugs-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_7".url = "path:./v0_0_7";
  inputs."zfplugs-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_10".url = "path:./v0_1_10";
  inputs."zfplugs-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_11".url = "path:./v0_1_11";
  inputs."zfplugs-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_5".url = "path:./v0_1_5";
  inputs."zfplugs-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_6".url = "path:./v0_1_6";
  inputs."zfplugs-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_7".url = "path:./v0_1_7";
  inputs."zfplugs-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_8".url = "path:./v0_1_8";
  inputs."zfplugs-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_9".url = "path:./v0_1_9";
  inputs."zfplugs-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v1_1_8".url = "path:./v1_1_8";
  inputs."zfplugs-v1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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