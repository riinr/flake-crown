{
  description = ''Crossplatform (x11, windows, osx) native file dialogs; sytem file/folder icons in any resolution; open file with default application'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."os_files-master".dir   = "master";
  inputs."os_files-master".owner = "nim-nix-pkgs";
  inputs."os_files-master".ref   = "master";
  inputs."os_files-master".repo  = "os_files";
  inputs."os_files-master".type  = "github";
  inputs."os_files-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."os_files-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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