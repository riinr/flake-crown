{
  description = ''Nim bindings for stb_truetype.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stb_truetype-master".dir   = "master";
  inputs."stb_truetype-master".owner = "nim-nix-pkgs";
  inputs."stb_truetype-master".ref   = "master";
  inputs."stb_truetype-master".repo  = "stb_truetype";
  inputs."stb_truetype-master".type  = "github";
  inputs."stb_truetype-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_truetype-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_truetype-0_0_1".dir   = "0_0_1";
  inputs."stb_truetype-0_0_1".owner = "nim-nix-pkgs";
  inputs."stb_truetype-0_0_1".ref   = "master";
  inputs."stb_truetype-0_0_1".repo  = "stb_truetype";
  inputs."stb_truetype-0_0_1".type  = "github";
  inputs."stb_truetype-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_truetype-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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