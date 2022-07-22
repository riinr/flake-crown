{
  description = ''Open Any Url/File in the default App / WebBrowser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."openurl-main".dir   = "main";
  inputs."openurl-main".owner = "nim-nix-pkgs";
  inputs."openurl-main".ref   = "master";
  inputs."openurl-main".repo  = "openurl";
  inputs."openurl-main".type  = "github";
  inputs."openurl-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openurl-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openurl-v2_0_0".dir   = "v2_0_0";
  inputs."openurl-v2_0_0".owner = "nim-nix-pkgs";
  inputs."openurl-v2_0_0".ref   = "master";
  inputs."openurl-v2_0_0".repo  = "openurl";
  inputs."openurl-v2_0_0".type  = "github";
  inputs."openurl-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openurl-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openurl-v2_0_1".dir   = "v2_0_1";
  inputs."openurl-v2_0_1".owner = "nim-nix-pkgs";
  inputs."openurl-v2_0_1".ref   = "master";
  inputs."openurl-v2_0_1".repo  = "openurl";
  inputs."openurl-v2_0_1".type  = "github";
  inputs."openurl-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openurl-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openurl-v2_0_2".dir   = "v2_0_2";
  inputs."openurl-v2_0_2".owner = "nim-nix-pkgs";
  inputs."openurl-v2_0_2".ref   = "master";
  inputs."openurl-v2_0_2".repo  = "openurl";
  inputs."openurl-v2_0_2".type  = "github";
  inputs."openurl-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openurl-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openurl-v2_0_3".dir   = "v2_0_3";
  inputs."openurl-v2_0_3".owner = "nim-nix-pkgs";
  inputs."openurl-v2_0_3".ref   = "master";
  inputs."openurl-v2_0_3".repo  = "openurl";
  inputs."openurl-v2_0_3".type  = "github";
  inputs."openurl-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openurl-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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