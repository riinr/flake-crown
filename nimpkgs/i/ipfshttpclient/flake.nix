{
  description = ''ipfs http client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ipfshttpclient-main".dir   = "main";
  inputs."ipfshttpclient-main".owner = "nim-nix-pkgs";
  inputs."ipfshttpclient-main".ref   = "master";
  inputs."ipfshttpclient-main".repo  = "ipfshttpclient";
  inputs."ipfshttpclient-main".type  = "github";
  inputs."ipfshttpclient-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ipfshttpclient-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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