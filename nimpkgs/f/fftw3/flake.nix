{
  description = ''Bindings to the FFTW library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fftw3-master".url = "path:./master";
  inputs."fftw3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_0".url = "path:./v0_2_0";
  inputs."fftw3-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_1".url = "path:./v0_2_1";
  inputs."fftw3-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_2".url = "path:./v0_2_2";
  inputs."fftw3-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_3".url = "path:./v0_2_3";
  inputs."fftw3-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_4".url = "path:./v0_2_4";
  inputs."fftw3-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_5".url = "path:./v0_2_5";
  inputs."fftw3-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_6".url = "path:./v0_2_6";
  inputs."fftw3-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_7".url = "path:./v0_2_7";
  inputs."fftw3-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_8".url = "path:./v0_2_8";
  inputs."fftw3-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_2_9".url = "path:./v0_2_9";
  inputs."fftw3-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_3_0".url = "path:./v0_3_0";
  inputs."fftw3-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_3_1".url = "path:./v0_3_1";
  inputs."fftw3-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_0".url = "path:./v0_4_0";
  inputs."fftw3-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_1".url = "path:./v0_4_1";
  inputs."fftw3-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_2".url = "path:./v0_4_2";
  inputs."fftw3-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_3".url = "path:./v0_4_3";
  inputs."fftw3-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_4".url = "path:./v0_4_4";
  inputs."fftw3-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_5".url = "path:./v0_4_5";
  inputs."fftw3-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_6".url = "path:./v0_4_6";
  inputs."fftw3-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_4_7".url = "path:./v0_4_7";
  inputs."fftw3-v0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_5_0".url = "path:./v0_5_0";
  inputs."fftw3-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fftw3-v0_5_1".url = "path:./v0_5_1";
  inputs."fftw3-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fftw3-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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