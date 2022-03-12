{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."recaptcha-master".url = "path:./master";
  inputs."recaptcha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_0".url = "path:./v1_0_0";
  inputs."recaptcha-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_1".url = "path:./v1_0_1";
  inputs."recaptcha-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_2".url = "path:./v1_0_2";
  inputs."recaptcha-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_3".url = "path:./v1_0_3";
  inputs."recaptcha-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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