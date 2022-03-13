{
  description = ''DNS /etc/hosts file manager, Block 1 Million malicious domains with 1 command'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dnsprotec-master".dir   = "master";
  inputs."dnsprotec-master".owner = "nim-nix-pkgs";
  inputs."dnsprotec-master".ref   = "master";
  inputs."dnsprotec-master".repo  = "dnsprotec";
  inputs."dnsprotec-master".type  = "github";
  inputs."dnsprotec-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotec-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsprotec-0_0_1".dir   = "0_0_1";
  inputs."dnsprotec-0_0_1".owner = "nim-nix-pkgs";
  inputs."dnsprotec-0_0_1".ref   = "master";
  inputs."dnsprotec-0_0_1".repo  = "dnsprotec";
  inputs."dnsprotec-0_0_1".type  = "github";
  inputs."dnsprotec-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsprotec-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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