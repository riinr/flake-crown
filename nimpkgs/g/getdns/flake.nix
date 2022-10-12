{
  description = ''Wrapper over the getdns API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."getdns-trunk".dir   = "trunk";
  inputs."getdns-trunk".owner = "nim-nix-pkgs";
  inputs."getdns-trunk".ref   = "master";
  inputs."getdns-trunk".repo  = "getdns";
  inputs."getdns-trunk".type  = "github";
  inputs."getdns-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getdns-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."getdns-20220913".dir   = "20220913";
  inputs."getdns-20220913".owner = "nim-nix-pkgs";
  inputs."getdns-20220913".ref   = "master";
  inputs."getdns-20220913".repo  = "getdns";
  inputs."getdns-20220913".type  = "github";
  inputs."getdns-20220913".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getdns-20220913".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."getdns-20220921".dir   = "20220921";
  inputs."getdns-20220921".owner = "nim-nix-pkgs";
  inputs."getdns-20220921".ref   = "master";
  inputs."getdns-20220921".repo  = "getdns";
  inputs."getdns-20220921".type  = "github";
  inputs."getdns-20220921".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getdns-20220921".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."getdns-20220927".dir   = "20220927";
  inputs."getdns-20220927".owner = "nim-nix-pkgs";
  inputs."getdns-20220927".ref   = "master";
  inputs."getdns-20220927".repo  = "getdns";
  inputs."getdns-20220927".type  = "github";
  inputs."getdns-20220927".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getdns-20220927".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."getdns-20220928".dir   = "20220928";
  inputs."getdns-20220928".owner = "nim-nix-pkgs";
  inputs."getdns-20220928".ref   = "master";
  inputs."getdns-20220928".repo  = "getdns";
  inputs."getdns-20220928".type  = "github";
  inputs."getdns-20220928".inputs.nixpkgs.follows = "nixpkgs";
  inputs."getdns-20220928".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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