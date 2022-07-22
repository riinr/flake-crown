{
  description = ''Check if a passphrase has been pwned using the Pwned Passwords v3 API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pwnedpass-master".dir   = "master";
  inputs."pwnedpass-master".owner = "nim-nix-pkgs";
  inputs."pwnedpass-master".ref   = "master";
  inputs."pwnedpass-master".repo  = "pwnedpass";
  inputs."pwnedpass-master".type  = "github";
  inputs."pwnedpass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwnedpass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwned-v0_1_0".dir   = "v0_1_0";
  inputs."pwned-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pwned-v0_1_0".ref   = "master";
  inputs."pwned-v0_1_0".repo  = "pwned";
  inputs."pwned-v0_1_0".type  = "github";
  inputs."pwned-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwned-v1_0_0".dir   = "v1_0_0";
  inputs."pwned-v1_0_0".owner = "nim-nix-pkgs";
  inputs."pwned-v1_0_0".ref   = "master";
  inputs."pwned-v1_0_0".repo  = "pwned";
  inputs."pwned-v1_0_0".type  = "github";
  inputs."pwned-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwned-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwnedpass-v2_0_0".dir   = "v2_0_0";
  inputs."pwnedpass-v2_0_0".owner = "nim-nix-pkgs";
  inputs."pwnedpass-v2_0_0".ref   = "master";
  inputs."pwnedpass-v2_0_0".repo  = "pwnedpass";
  inputs."pwnedpass-v2_0_0".type  = "github";
  inputs."pwnedpass-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwnedpass-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwnedpass-v2_0_1".dir   = "v2_0_1";
  inputs."pwnedpass-v2_0_1".owner = "nim-nix-pkgs";
  inputs."pwnedpass-v2_0_1".ref   = "master";
  inputs."pwnedpass-v2_0_1".repo  = "pwnedpass";
  inputs."pwnedpass-v2_0_1".type  = "github";
  inputs."pwnedpass-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwnedpass-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwnedpass-v2_0_2".dir   = "v2_0_2";
  inputs."pwnedpass-v2_0_2".owner = "nim-nix-pkgs";
  inputs."pwnedpass-v2_0_2".ref   = "master";
  inputs."pwnedpass-v2_0_2".repo  = "pwnedpass";
  inputs."pwnedpass-v2_0_2".type  = "github";
  inputs."pwnedpass-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwnedpass-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwnedpass-v2_0_3".dir   = "v2_0_3";
  inputs."pwnedpass-v2_0_3".owner = "nim-nix-pkgs";
  inputs."pwnedpass-v2_0_3".ref   = "master";
  inputs."pwnedpass-v2_0_3".repo  = "pwnedpass";
  inputs."pwnedpass-v2_0_3".type  = "github";
  inputs."pwnedpass-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwnedpass-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwnedpass-v2_0_4".dir   = "v2_0_4";
  inputs."pwnedpass-v2_0_4".owner = "nim-nix-pkgs";
  inputs."pwnedpass-v2_0_4".ref   = "master";
  inputs."pwnedpass-v2_0_4".repo  = "pwnedpass";
  inputs."pwnedpass-v2_0_4".type  = "github";
  inputs."pwnedpass-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwnedpass-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pwnedpass-v2_0_5".dir   = "v2_0_5";
  inputs."pwnedpass-v2_0_5".owner = "nim-nix-pkgs";
  inputs."pwnedpass-v2_0_5".ref   = "master";
  inputs."pwnedpass-v2_0_5".repo  = "pwnedpass";
  inputs."pwnedpass-v2_0_5".type  = "github";
  inputs."pwnedpass-v2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwnedpass-v2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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