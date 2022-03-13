{
  description = ''The SHIORI Message charset convert utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shiori_charset_convert-master".dir   = "master";
  inputs."shiori_charset_convert-master".owner = "nim-nix-pkgs";
  inputs."shiori_charset_convert-master".ref   = "master";
  inputs."shiori_charset_convert-master".repo  = "shiori_charset_convert";
  inputs."shiori_charset_convert-master".type  = "github";
  inputs."shiori_charset_convert-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shiori_charset_convert-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shiori_charset_convert-v1_0_0".dir   = "v1_0_0";
  inputs."shiori_charset_convert-v1_0_0".owner = "nim-nix-pkgs";
  inputs."shiori_charset_convert-v1_0_0".ref   = "master";
  inputs."shiori_charset_convert-v1_0_0".repo  = "shiori_charset_convert";
  inputs."shiori_charset_convert-v1_0_0".type  = "github";
  inputs."shiori_charset_convert-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shiori_charset_convert-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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