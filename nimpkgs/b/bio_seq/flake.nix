{
  description = ''A Nim library for biological sequence data.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bio_seq-main".url = "path:./main";
  inputs."bio_seq-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v_0_0_2".url = "path:./v_0_0_2";
  inputs."bio_seq-v_0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v_0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v_0_0_5".url = "path:./v_0_0_5";
  inputs."bio_seq-v_0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v_0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v_0_0_7".url = "path:./v_0_0_7";
  inputs."bio_seq-v_0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v_0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v0_0_1".url = "path:./v0_0_1";
  inputs."bio_seq-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v0_0_3".url = "path:./v0_0_3";
  inputs."bio_seq-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v0_0_4".url = "path:./v0_0_4";
  inputs."bio_seq-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq-v0_0_8".url = "path:./v0_0_8";
  inputs."bio_seq-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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