{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."recaptcha-master".dir   = "master";
  inputs."recaptcha-master".owner = "nim-nix-pkgs";
  inputs."recaptcha-master".ref   = "master";
  inputs."recaptcha-master".repo  = "recaptcha";
  inputs."recaptcha-master".type  = "github";
  inputs."recaptcha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_0".dir   = "v1_0_0";
  inputs."recaptcha-v1_0_0".owner = "nim-nix-pkgs";
  inputs."recaptcha-v1_0_0".ref   = "master";
  inputs."recaptcha-v1_0_0".repo  = "recaptcha";
  inputs."recaptcha-v1_0_0".type  = "github";
  inputs."recaptcha-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_1".dir   = "v1_0_1";
  inputs."recaptcha-v1_0_1".owner = "nim-nix-pkgs";
  inputs."recaptcha-v1_0_1".ref   = "master";
  inputs."recaptcha-v1_0_1".repo  = "recaptcha";
  inputs."recaptcha-v1_0_1".type  = "github";
  inputs."recaptcha-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_2".dir   = "v1_0_2";
  inputs."recaptcha-v1_0_2".owner = "nim-nix-pkgs";
  inputs."recaptcha-v1_0_2".ref   = "master";
  inputs."recaptcha-v1_0_2".repo  = "recaptcha";
  inputs."recaptcha-v1_0_2".type  = "github";
  inputs."recaptcha-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha-v1_0_3".dir   = "v1_0_3";
  inputs."recaptcha-v1_0_3".owner = "nim-nix-pkgs";
  inputs."recaptcha-v1_0_3".ref   = "master";
  inputs."recaptcha-v1_0_3".repo  = "recaptcha";
  inputs."recaptcha-v1_0_3".type  = "github";
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