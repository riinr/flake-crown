{
  description = ''Nim bindings for stb_truetype.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stb_truetype-master".url = "path:./master";
  inputs."stb_truetype-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_truetype-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_truetype-0_0_1".url = "path:./0_0_1";
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