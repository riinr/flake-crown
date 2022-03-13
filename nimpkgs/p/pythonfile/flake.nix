{
  description = ''Wrapper of the file procedures to provide an interface as similar as possible to that of Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pythonfile-master".dir   = "master";
  inputs."pythonfile-master".owner = "nim-nix-pkgs";
  inputs."pythonfile-master".ref   = "master";
  inputs."pythonfile-master".repo  = "pythonfile";
  inputs."pythonfile-master".type  = "github";
  inputs."pythonfile-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pythonfile-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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